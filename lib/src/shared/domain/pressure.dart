enum Pressure {
  thirty(30.0),
  hundred(100.0),
  fourThousand(4000.0);

  const Pressure(this.value);

  final double value;

  String get label => switch (this) {
        thirty => "30",
        hundred => "100",
        fourThousand => "4000",
      };
}
