import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum EntityType {
  light('light'),
  ;

  const EntityType(
    this.type,
  );

  final String type;

  IconData get icon => {
        EntityType.light: Icons.lightbulb,
      }[this]!;

  String title(AppLocalizations translations) =>
      {EntityType.light: translations.entityTypeLightTitle}[this]!;

  String subtitle<T>(AppLocalizations translations, [T? arg]) => {
        EntityType.light: translations.entityTypeLightSubtitle(arg as int),
      }[this]!;
}
