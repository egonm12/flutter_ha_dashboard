part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    required this.appStatus,
    required this.appSettings,
  });

  final AppStatus appStatus;
  final AppSettings appSettings;

  AppState copyWith({
    AppStatus? appStatus,
    AppSettings? appSettings,
  }) =>
      AppState(
        appStatus: appStatus ?? this.appStatus,
        appSettings: appSettings ?? this.appSettings,
      );

  @override
  List<Object?> get props => [appStatus, appSettings];
}

@freezed
class AppStatus with _$AppStatus {
  const factory AppStatus.uninitialized() = _StatusUninitialized;
  const factory AppStatus.initialized() = _StatusInitialized;
}

class AppSettings extends Equatable {
  const AppSettings({
    required this.homeAssistantUrl,
    required this.themeMode,
  });

  final String homeAssistantUrl;
  final ThemeMode themeMode;

  AppSettings copyWith({
    String? homeAssistantUrl,
    ThemeMode? themeMode,
  }) =>
      AppSettings(
        homeAssistantUrl: homeAssistantUrl ?? this.homeAssistantUrl,
        themeMode: themeMode ?? this.themeMode,
      );

  @override
  List<Object?> get props => [homeAssistantUrl, themeMode];
}
