import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MockAppLocalizations extends AppLocalizations {
  MockAppLocalizations() : super('en');

  static const LocalizationsDelegate<AppLocalizations> delegate =
      MockLocalizationDelegate();

  @override
  String noSuchMethod(Invocation invocation) {
    String key = invocation.memberName.toString();
    key = key.substring(8, key.length - 2);

    return key;
  }
}

class MockLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const MockLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;

  @override
  Future<AppLocalizations> load(Locale locale) async => MockAppLocalizations();
}
