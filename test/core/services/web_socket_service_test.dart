import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_ha_dashboard/src/core/domain/web_socket_event/web_socket_event.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import '../../factories/area_registry_dto_factory.dart';
import '../../factories/device_registry_dto_factory.dart';
import '../../factories/entity_registry_dto_factory.dart';
import '../../factories/entity_states_dto_factory.dart';
import '../../factories/state_change_dto_factory.dart';
import '../../mocks/mocks.dart';

class MockWebSocketChannel extends Mock implements WebSocketChannel {
  MockWebSocketChannel(
    this.webSocketSink,
  );

  final MockWebSocketSink webSocketSink;

  @override
  WebSocketSink get sink => webSocketSink;
}

class MockWebSocketSink extends Mock implements WebSocketSink {}

void main() {
  group(WebSocketService, () {
    late final WebSocketService webSocketService;
    late final MockWebSocketSink webSocketSink;
    late final MockWebSocketChannel webSocketChannel;
    late final MockSharedPreferencesService sharedPreferencesService;
    late final MockAuthenticationRepository authenticationRepository;

    const homeAssistantUrl = 'http://localhost:3000';
    const accessToken = 'access token';

    setUpAll(() async {
      webSocketSink = MockWebSocketSink();
      webSocketChannel = MockWebSocketChannel(webSocketSink);
      sharedPreferencesService = MockSharedPreferencesService();
      authenticationRepository = MockAuthenticationRepository();

      when(() => sharedPreferencesService.homeAssistantUrl)
          .thenReturn(homeAssistantUrl);
      when(() => authenticationRepository.validAccessToken).thenAnswer(
        (_) => Future.value(accessToken),
      );

      when(() => webSocketChannel.stream).thenAnswer(
        (_) => Stream<Object>.fromIterable([]),
      );
      when(() => webSocketSink.add(any<dynamic>())).thenReturn(null);

      webSocketService = await WebSocketService.create(
        webSocketChannel: webSocketChannel,
        sharedPreferencesService: sharedPreferencesService,
        authenticationRepository: authenticationRepository,
      );
    });

    tearDownAll(() {
      webSocketSink.close();
    });

    test(
        'Given the web socket service is created'
        'When there is a web socket channel connection'
        'Then an authentication request is added to the sink'
        'And a listener to the web socket channel stream is registered',
        () async {
      verify(
        () => webSocketSink.add(
          json.encode({
            "type": "auth",
            "access_token": accessToken,
          }),
        ),
      ).called(1);

      verify(() => webSocketChannel.stream.listen((dynamic _) => any()))
          .called(1);
    });

    test(
        'Given the area registries data event'
        'Then it increments the command id'
        'And it adds a new event to the web socket sink', () async {
      webSocketService.areaRegistries();

      expect(webSocketService.commandId, 1);

      verify(
        () => webSocketSink.add(
          json.encode({
            "id": 1,
            "type": "config/area_registry/list",
          }),
        ),
      ).called(1);
    });

    test(
        'Given the device registries data event'
        'Then it increments the command id'
        'And it adds a new event to the web socket sink', () async {
      webSocketService.deviceRegistries();

      expect(webSocketService.commandId, 2);

      verify(
        () => webSocketSink.add(
          json.encode({
            "id": 2,
            "type": "config/device_registry/list",
          }),
        ),
      ).called(1);
    });

    test(
        'Given the entity registries data event'
        'Then it increments the command id'
        'And it adds a new event to the web socket sink', () async {
      webSocketService.entityRegistries();

      expect(webSocketService.commandId, 3);

      verify(
        () => webSocketSink.add(
          json.encode({
            "id": 3,
            "type": "config/entity_registry/list",
          }),
        ),
      ).called(1);
    });

    test(
        'Given the entity states data event'
        'Then it increments the command id'
        'And it adds a new event to the web socket sink', () async {
      webSocketService.entityStates();

      expect(webSocketService.commandId, 4);

      verify(
        () => webSocketSink.add(
          json.encode({
            "id": 4,
            "type": "get_states",
          }),
        ),
      ).called(1);
    });

    test(
        'Given the subscribe to changes data event'
        'Then it increments the command id'
        'And it adds a new event to the web socket sink', () async {
      webSocketService.subscribeToStateChanges();

      expect(webSocketService.commandId, 5);

      verify(
        () => webSocketSink.add(
          json.encode({
            "id": 5,
            "type": "subscribe_events",
            "event_type": "state_changed",
          }),
        ),
      ).called(1);
    });

    test(
        'Given the data event of type result is handled'
        'When the result is an area registry list'
        'Then it emits the area registry dto to the stream', () async {
      final areaRegistryDTO = AreaRegistriesDTOFactory().generateFake();
      webSocketService.handleResult(areaRegistryDTO.toJson());

      expectLater(
        webSocketService.stream,
        emits(
          WebSocketEvent.areaRegistryListUpdate(areaRegistryDTO),
        ),
      );
    });

    test(
        'Given the data event of type result is handled'
        'When the result is an entity registry list'
        'Then it emits the entity registry dto to the stream', () async {
      final entityRegistriesDTO = EntityRegistriesDTOFactory().generateFake();
      webSocketService.handleResult(entityRegistriesDTO.toJson());

      expectLater(
        webSocketService.stream,
        emits(
          WebSocketEvent.entityRegistryListUpdate(entityRegistriesDTO),
        ),
      );
    });

    test(
        'Given the data event of type result is handled'
        'When the result is a device registry list'
        'Then it emits the entity registry dto to the stream', () async {
      final deviceRegistriesDTO = DeviceRegistriesDTOFactory().generateFake();
      webSocketService.handleResult(deviceRegistriesDTO.toJson());

      expectLater(
        webSocketService.stream,
        emits(
          WebSocketEvent.deviceRegistryListUpdate(deviceRegistriesDTO),
        ),
      );
    });

    test(
        'Given the data event of type result is handled'
        'When the result is an entity registry list'
        'Then it emits the entity states dto to the stream', () async {
      final entityStatesDTO = EntityStatesDTOFactory().generateFake();
      webSocketService.handleResult(entityStatesDTO.toJson());

      expectLater(
        webSocketService.stream,
        emits(
          WebSocketEvent.entityStatesUpdate(entityStatesDTO),
        ),
      );
    });

    test(
        'Given the data event of type event is handled'
        'When the result is a state change event'
        'Then it emits the state change dto to the stream', () async {
      final stateChangeDTO = StateChangeDTOFactory().generateFake();
      webSocketService.handleEvent(stateChangeDTO.toJson());

      expectLater(
        webSocketService.stream,
        emits(
          WebSocketEvent.stateChangeUpdate(stateChangeDTO),
        ),
      );
    });
  });
}
