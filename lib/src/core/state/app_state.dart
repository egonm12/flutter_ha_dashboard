part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.uninitialized() = _AppUninitialized;
  const factory AppState.initialized() = _AppInitialized;
}
