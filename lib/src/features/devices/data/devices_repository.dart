import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';

class DevicesRepository {
  DevicesRepository._internal() {
    _webSocketSubscription = _webSocketChannel?.stream.listen((Object? event) {
      if (event is String) _webSocketSubject.value = event;
    });
  }

  static Future<DevicesRepository> create() async {
    _webSocketChannel =
        await serviceLocator<WebSocketService>().webSocketChannel;

    final _instance = DevicesRepository._internal();

    return _instance;
  }

  static late WebSocketChannel? _webSocketChannel;

  final BehaviorSubject<String> _webSocketSubject = BehaviorSubject<String>();
  late final StreamSubscription<Object?>? _webSocketSubscription;

  Future<void> dispose() async {
    await _webSocketSubject.close();
    await _webSocketSubscription?.cancel();
  }
}
