import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

enum ScreenTab {
  calculator,
  history;

  factory ScreenTab.fromIndex(int index) => switch (index) {
        0 => ScreenTab.calculator,
        _ => ScreenTab.history,
      };

  IconData get icon => switch (this) {
        calculator => Icons.calculate_rounded,
        history => Icons.work_history_rounded,
      };

  String localizedTitle(BuildContext context) => switch (index) {
        0 => AppLocalizations.of(context).calculator_tab,
        _ => AppLocalizations.of(context).history_tab,
      };
}
