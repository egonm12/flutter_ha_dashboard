import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/src/features/entities/data/entities_repository.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries.dart';

part 'entity_list_state.dart';

class EntityListCubit extends Cubit<EntityListState> {
  EntityListCubit({
    required EntitiesRepository entitiesRepository,
  })  : _entitiesRepository = entitiesRepository,
        super(const EntityListState(
          commandId: 1,
          entities: [],
        )) {
    _entitiesRepositorySubscription =
        _entitiesRepository.stream.listen((Map<String, Object?> event) {
      try {
        final entities = EntityRegistriesDto.fromJson(event).result;

        emit(
          state.copyWith(
            entities: entities,
          ),
        );
      } catch (e) {
        print(e);
      }
    });
  }

  late final EntitiesRepository _entitiesRepository;

  late final StreamSubscription<Map<String, Object?>>
      _entitiesRepositorySubscription;

  @override
  Future<void> close() async {
    await _entitiesRepositorySubscription.cancel();
    super.close();
  }

  void entityRegistries() {
    _entitiesRepository.entityRegistries(state.commandId);

    emit(state.copyWith(commandId: state.commandId + 1));
  }
}
