import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';

class WebSocketService {
  WebSocketService._internal(
    this._sharedPreferencesService,
    this._authenticationRepository,
  );

  static Future<WebSocketService> create({
    SharedPreferencesService? sharedPreferencesService,
    AuthenticationRepository? authenticationRepository,
  }) async {
    final _instance = WebSocketService._internal(
      sharedPreferencesService ?? serviceLocator<SharedPreferencesService>(),
      authenticationRepository ?? serviceLocator<AuthenticationRepository>(),
    );

    return _instance;
  }

  late final Uri? webSocketUri =
      _sharedPreferencesService.homeAssistantUrl.isNotEmpty
          ? Uri.tryParse(
              'wss://${Uri.tryParse(_sharedPreferencesService.homeAssistantUrl)?.host}/api/websocket',
            )
          : null;

  final SharedPreferencesService _sharedPreferencesService;
  final AuthenticationRepository _authenticationRepository;

  Future<WebSocketChannel?> get webSocketChannel async {
    final _webSocketChannel =
        webSocketUri != null ? WebSocketChannel.connect(webSocketUri!) : null;

    _webSocketChannel?.sink.add(
      json.encode({
        "type": "auth",
        "access_token": await _authenticationRepository.validAccessToken,
      }),
    );

    return _webSocketChannel;
  }
}
