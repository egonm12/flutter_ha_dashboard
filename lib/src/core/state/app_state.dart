part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    required this.appStatus,
    required this.appSettings,
  });

  final AppStatus appStatus;
  final AppInfo appSettings;

  AppState copyWith({
    AppStatus? appStatus,
    AppInfo? appSettings,
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

class AppInfo extends Equatable {
  const AppInfo({
    required this.homeAssistantUrl,
    required this.themeMode,
  });

  final String homeAssistantUrl;
  final ThemeMode themeMode;

  AppInfo copyWith({
    String? homeAssistantUrl,
    ThemeMode? themeMode,
  }) =>
      AppInfo(
        homeAssistantUrl: homeAssistantUrl ?? this.homeAssistantUrl,
        themeMode: themeMode ?? this.themeMode,
      );

  @override
  List<Object?> get props => [homeAssistantUrl, themeMode];
}
