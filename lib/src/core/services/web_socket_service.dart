import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'package:flutter_ha_dashboard/src/core/domain/web_socket_event/web_socket_event.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';

class WebSocketService {
  WebSocketService._internal() {
    _webSocketSubscription = channel?.stream.listen((Object? event) {
      if (event is String) {
        final Map<String, dynamic> _json =
            json.decode(event) as Map<String, dynamic>;

        final type = _json['type'] as String?;

        if (type == 'result') {
          _handleResult(_json);
        } else if (type == 'event') {
          _handleEvent(_json);
        }
      }
    });
  }

  static Future<WebSocketService> create({
    SharedPreferencesService? sharedPreferencesService,
    AuthenticationRepository? authenticationRepository,
  }) async {
    final _sharedPreferencesService =
        sharedPreferencesService ?? serviceLocator<SharedPreferencesService>();
    final _authenticationRepository =
        authenticationRepository ?? serviceLocator<AuthenticationRepository>();

    final Uri? webSocketUri =
        _sharedPreferencesService.homeAssistantUrl.isNotEmpty
            ? Uri.tryParse(
                'wss://${Uri.tryParse(_sharedPreferencesService.homeAssistantUrl)?.host}/api/websocket',
              )
            : null;

    channel =
        webSocketUri != null ? WebSocketChannel.connect(webSocketUri) : null;

    final _instance = WebSocketService._internal();

    channel?.sink.add(
      json.encode({
        "type": "auth",
        "access_token": await _authenticationRepository.validAccessToken,
      }),
    );

    return _instance;
  }

  static late final WebSocketChannel? channel;

  final BehaviorSubject<WebSocketEvent> _webSocketSubject =
      BehaviorSubject<WebSocketEvent>();

  final BehaviorSubject<int> _commandIdSubject = BehaviorSubject<int>.seeded(0);
  Stream<WebSocketEvent> get stream => _webSocketSubject.stream;
  int get commandId => _commandIdSubject.value;

  late final StreamSubscription<Object?>? _webSocketSubscription;

  Future<void> dispose() async {
    await _webSocketSubject.close();
    await _commandIdSubject.close();
    await _webSocketSubscription?.cancel();
  }

  void areaRegistries() {
    _commandIdSubject.value = commandId + 1;

    channel?.sink.add(
      json.encode({
        "id": commandId,
        "type": "config/area_registry/list",
      }),
    );
  }

  void deviceRegistries() {
    _commandIdSubject.value = commandId + 1;

    channel?.sink.add(
      json.encode({
        "id": commandId,
        "type": "config/device_registry/list",
      }),
    );
  }

  void entityRegistries() {
    _commandIdSubject.value = commandId + 1;

    channel?.sink.add(
      json.encode({
        "id": commandId,
        "type": "config/entity_registry/list",
      }),
    );
  }

  void entityStates() {
    _commandIdSubject.value = commandId + 1;

    channel?.sink.add(
      json.encode({
        "id": commandId,
        "type": "get_states",
      }),
    );
  }

  void subscribeToStateChanges() {
    _commandIdSubject.value = commandId + 1;

    channel?.sink.add(
      json.encode({
        "id": commandId,
        "type": "subscribe_events",
        "event_type": "state_changed",
      }),
    );
  }

  void _handleResult(Map<String, dynamic> json) {
    final Object? result = json['result'];

    if (result != null && result is List && result.isNotEmpty) {
      final first = result.first as Map<String, dynamic>;

      if (first.containsKey('area_id') &&
          first.containsKey('name') &&
          first.containsKey('picture')) {
        _webSocketSubject.value = WebSocketEvent.areaRegistryList(
          AreaRegistriesDTO.fromJson(json),
        );
      } else if (first.containsKey('entity_id')) {
        first.containsKey('state')
            ? _webSocketSubject.value = WebSocketEvent.entityStates(
                EntityStatesDTO.fromJson(json),
              )
            : _webSocketSubject.value = WebSocketEvent.entityRegistryList(
                EntityRegistriesDto.fromJson(json),
              );
      } else if (first.containsKey('id') &&
          first.containsKey('via_device_id')) {
        _webSocketSubject.value = WebSocketEvent.deviceRegistryList(
          DeviceRegistriesDTO.fromJson(json),
        );
      } else {
        if (kDebugMode) {
          print('No valid format for result');
        }
      }
    }
  }

  void _handleEvent(Map<String, dynamic> json) {
    final event = json['event'] as Map<String, dynamic>;

    if (event['event_type'] == 'state_changed' &&
        (event['data']['entity_id'] as String).startsWith('light')) {
      _webSocketSubject.value = WebSocketEvent.stateChange(
        StateChangeDto.fromJson(json),
      );
    } else {
      if (kDebugMode) {
        print('No valid format for event');
      }
    }
  }
}
