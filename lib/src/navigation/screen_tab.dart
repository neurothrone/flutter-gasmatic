enum ScreenTab {
  calculator,
  history;

  factory ScreenTab.fromIndex(int index) => switch (index) {
        0 => ScreenTab.calculator,
        _ => ScreenTab.history,
      };
}
