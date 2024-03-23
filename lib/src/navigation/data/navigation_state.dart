import 'package:flutter/foundation.dart';

import '../domain/domain.dart';

@immutable
class NavigationState {
  const NavigationState({
    required this.selectedScreen,
    required this.selectedGasTab,
    required this.selectedEffectTab,
  });

  factory NavigationState.initial() {
    return const NavigationState(
      selectedScreen: Screen.gas,
      selectedGasTab: ScreenTab.calculator,
      selectedEffectTab: ScreenTab.calculator,
    );
  }

  final Screen selectedScreen;
  final ScreenTab selectedGasTab;
  final ScreenTab selectedEffectTab;

  NavigationState copyWith({
    Screen? selectedScreen,
    ScreenTab? selectedGasTab,
    ScreenTab? selectedEffectTab,
  }) {
    return NavigationState(
      selectedScreen: selectedScreen ?? this.selectedScreen,
      selectedGasTab: selectedGasTab ?? this.selectedGasTab,
      selectedEffectTab: selectedEffectTab ?? this.selectedEffectTab,
    );
  }
}
