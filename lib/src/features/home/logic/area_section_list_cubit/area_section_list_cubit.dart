import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/domain/web_socket_event/web_socket_event.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';

part 'area_section_list_state.dart';

class AreaSectionListCubit extends Cubit<AreaSectionListState> {
  AreaSectionListCubit({
    WebSocketService? webSocketService,
  })  : _webSocketService =
            webSocketService ?? serviceLocator<WebSocketService>(),
        super(
          const AreaSectionListState(areas: []),
        ) {
    _webSocketServiceStream = _webSocketService.stream.listen((event) {
      event.maybeWhen(
        orElse: () => null,
        areaRegistryListUpdate: (areasDTO) {
          emit(
            state.copyWith(
              areas: areasDTO.result,
            ),
          );
        },
      );
    });
  }

  late final WebSocketService _webSocketService;

  late final StreamSubscription<WebSocketEvent> _webSocketServiceStream;

  @override
  Future<void> close() async {
    await _webSocketServiceStream.cancel();
    super.close();
  }
}
