import 'package:flutter/material.dart';

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
}
