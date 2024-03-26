import 'package:flutter/material.dart';

import '../../../localization/localization.dart';

extension LocaleExtensions on Locale {
  String toReadableString(BuildContext context) {
    return switch (toString()) {
      "en" => AppLocalizations.of(context).english,
      _ => AppLocalizations.of(context).swedish,
    };
  }
}
