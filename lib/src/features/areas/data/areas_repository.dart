import 'dart:async';
import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';

class AreasRepository {
  AreasRepository._internal() {
    _webSocketSubscription = _webSocketChannel?.stream.listen((Object? event) {
      if (event is String) {
        final Map<String, dynamic> _json =
            json.decode(event) as Map<String, dynamic>;

        _webSocketSubject.value = _json;
      }
    });
  }

  static Future<AreasRepository> create() async {
    _webSocketChannel =
        await serviceLocator<WebSocketService>().webSocketChannel;

    final _instance = AreasRepository._internal();

    return _instance;
  }

  static late WebSocketChannel? _webSocketChannel;

  final BehaviorSubject<Map<String, dynamic>> _webSocketSubject =
      BehaviorSubject<Map<String, dynamic>>();
  Stream<Map<String, dynamic>> get stream => _webSocketSubject.stream;

  late final StreamSubscription<Object?>? _webSocketSubscription;

  Future<void> dispose() async {
    await _webSocketSubject.close();
    await _webSocketSubscription?.cancel();
  }

  void areaRegistries(int id) {
    _webSocketChannel?.sink.add(
      json.encode({
        "id": id,
        "type": "config/area_registry/list",
      }),
    );
  }
}
