import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension Localization on BuildContext {
  /// Returns all translations from [AppLocalizations]
  AppLocalizations get translations => AppLocalizations.of(this)!;
}
