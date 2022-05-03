class AppConfig {
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

  static AppConfig get instance {
    return _instance;
  }

  final String oauthClientId;
  final String oauthRedirectUri;

  static late AppConfig _instance;

  AppConfig._internal({
    required this.oauthClientId,
    required this.oauthRedirectUri,
  });
}
