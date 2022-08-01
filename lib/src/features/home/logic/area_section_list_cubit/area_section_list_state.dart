part of 'area_section_list_cubit.dart';

class AreaSectionListState extends Equatable {
  const AreaSectionListState({
    required this.areas,
  });

  final List<AreaRegistry> areas;

  @override
  List<Object?> get props => [areas];

  AreaSectionListState copyWith({
    List<AreaRegistry>? areas,
  }) =>
      AreaSectionListState(
        areas: areas ?? this.areas,
      );
}
