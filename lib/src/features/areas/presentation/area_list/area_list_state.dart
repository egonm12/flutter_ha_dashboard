part of 'area_list_cubit.dart';

class AreaListState extends Equatable {
  const AreaListState({
    required this.areas,
    required this.commandId,
  });

  final List<AreaRegistry> areas;
  final int commandId;

  @override
  List<Object?> get props => [
        areas,
        commandId,
      ];

  AreaListState copyWith({
    List<AreaRegistry>? areas,
    int? commandId,
  }) =>
      AreaListState(
        areas: areas ?? this.areas,
        commandId: commandId ?? this.commandId,
      );
}
