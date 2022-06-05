/// {@template AppConfig}
/// Convenience class used to set global app configuration
/// {@endtemplate}
class AppConfig {
  /// {@macro AppConfig}
  factory AppConfig({
    required String oauthClientId,
    required String oauthRedirectUri,
  }) {
    _instance = AppConfig._internal(
      oauthClientId: oauthClientId,
      oauthRedirectUri: oauthRedirectUri,
    );

    return _instance;
  }

  /// {@macro AppConfig}
  AppConfig._internal({
    required this.oauthClientId,
    required this.oauthRedirectUri,
  });

  /// Public instance of [AppConfig]
  static AppConfig get instance {
    return _instance;
  }

  /// Client id for OAuth authentication
  final String oauthClientId;

  /// Redirect URI for OAuth authentication
  final String oauthRedirectUri;

  /// Public instance of [AppConfig]
  static late AppConfig _instance;
}
