part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initializeApp() = _InitializeApp;
  const factory AppEvent.changeThemeMode(ThemeMode themeMode) =
      _ChangeThemeMode;
  const factory AppEvent.toggleThemeMode() = _ToggleThemeMode;
  const factory AppEvent.updateHomeAssistantUrl(String homeAssistantUrl) =
      _UpdateHomeAssistantUrl;
}
