part of 'entity_list_cubit.dart';

class EntityListState extends Equatable {
  const EntityListState({
    required this.entities,
    required this.commandId,
  });

  final List<EntityRegistry> entities;
  final int commandId;

  @override
  List<Object?> get props => [
        entities,
        commandId,
      ];

  EntityListState copyWith({
    List<EntityRegistry>? entities,
    int? commandId,
  }) =>
      EntityListState(
        entities: entities ?? this.entities,
        commandId: commandId ?? this.commandId,
      );
}
