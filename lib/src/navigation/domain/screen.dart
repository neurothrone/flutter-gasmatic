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
}
