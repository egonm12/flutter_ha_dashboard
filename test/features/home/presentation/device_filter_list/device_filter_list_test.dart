import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'package:flutter_ha_dashboard/src/features/home/logic/device_filter_list_cubit/device_filter_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/device_filter_list/device_filter.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/device_filter_list/device_filter_list.dart';
import '../../../../factories/entity_state_factory.dart';
import '../../../../mocks/mocks.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(DeviceFilterList, () {
    late final MockDeviceFilterListCubit deviceFilterListCubit;
    late final List<BlocProvider> blocProviders;

    Future<void> renderDeviceFilterList(
      WidgetTester tester, {
      bool mockAppLocalizations = true,
    }) async =>
        await tester.pumpRouterApp(
          const Scaffold(
            body: DeviceFilterList(),
          ),
          blocProviders: blocProviders,
          mockAppLocalizations: mockAppLocalizations,
        );

    setUpAll(() {
      deviceFilterListCubit = MockDeviceFilterListCubit();
      blocProviders = [
        BlocProvider<DeviceFilterListCubit>(
          create: (_) => deviceFilterListCubit,
        ),
      ];
    });

    group(DeviceFilterList.countLightStateOn, () {
      test(
          'Given there are no elements with the state equal to "on"'
          'Then it returns 0', () {
        final lights = [
          EntityStateFactory().generateFake(state: 'off'),
          EntityStateFactory().generateFake(state: 'off'),
          EntityStateFactory().generateFake(state: 'off'),
        ];

        expect(DeviceFilterList.countLightStateOn(lights), 0);
      });

      test(
          'Given there are 2 elements with the state equal to "on"'
          'Then it returns 2', () {
        final lights = [
          EntityStateFactory().generateFake(state: 'on'),
          EntityStateFactory().generateFake(state: 'on'),
          EntityStateFactory().generateFake(state: 'off'),
        ];

        expect(DeviceFilterList.countLightStateOn(lights), 2);
      });
    });

    group(DeviceFilterList.create, () {
      setUpAll(() async {
        serviceLocator.registerSingleton<WebSocketService>(
          MockWebSocketService(),
        );

        when(() => serviceLocator<WebSocketService>().stream).thenAnswer(
          (_) => Stream.fromIterable([]),
        );
      });

      testWidgets(
          'Returns a DeviceFilterList wrapped in a DeviceFilterListCubit',
          (tester) async {
        await tester.pumpRouterApp(DeviceFilterList.create());

        expect(
            find.byType(BlocProvider<DeviceFilterListCubit>), findsOneWidget);
        expect(find.byType(DeviceFilterList), findsOneWidget);
      });
    });

    testWidgets(
        'Given there are no individual lights'
        'Then it does not show the device filter for the lights',
        (tester) async {
      when(() => deviceFilterListCubit.state).thenReturn(
        const DeviceFilterListState(
          individualLights: [],
          devices: [],
          entities: [],
          entityStates: [],
        ),
      );

      await renderDeviceFilterList(tester);

      expect(
        find.widgetWithText(DeviceFilter, 'entityTypeLightTitle'),
        findsNothing,
      );
    });

    testWidgets(
        'Given there are individual lights'
        'Then it does show the device filter for the number of individual lights'
        'And it shows the number of individual lights that are on',
        (tester) async {
      final individualLights = EntityStateFactory().generateFakeList(
        length: 10,
        entityType: EntityType.light,
      );

      when(() => deviceFilterListCubit.state).thenReturn(
        DeviceFilterListState(
          individualLights: individualLights,
          devices: const [],
          entities: const [],
          entityStates: const [],
        ),
      );

      await renderDeviceFilterList(
        tester,
        mockAppLocalizations: false,
      );

      expect(
        find.widgetWithText(DeviceFilter, 'Lights'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          DeviceFilter,
          '${DeviceFilterList.countLightStateOn(individualLights)} On',
        ),
        findsOneWidget,
      );
    });
  });
}
