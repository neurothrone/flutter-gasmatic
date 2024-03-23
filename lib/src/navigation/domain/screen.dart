import 'package:flutter/cupertino.dart';

import '../../core/constants/constants.dart';

enum Screen {
  gas,
  effect,
  about,
  settings;

  factory Screen.fromIndex(int index) => switch (index) {
        0 => Screen.gas,
        1 => Screen.effect,
        2 => Screen.about,
        _ => Screen.settings,
      };

  String title() => switch (index) {
        0 => "Gas Volume",
        1 => "Effect",
        2 => "About",
        _ => "Settings",
      };

  String localizedTitle(BuildContext context) => switch (index) {
        0 => AppLocalizations.of(context).gas_volume_title,
        1 => AppLocalizations.of(context).effect_title,
        2 => AppLocalizations.of(context).about_title,
        _ => AppLocalizations.of(context).settings_title,
      };
}
