import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/domain.dart';
import 'navigation_state.dart';

class NavigationController extends StateNotifier<NavigationState> {
  NavigationController() : super(NavigationState.initial());

  void navigateTo(Screen newScreen) {
    if (newScreen != state.selectedScreen) {
      state = state.copyWith(selectedScreen: newScreen);
    }
  }

  void changeGasTabTo(ScreenTab newTab) {
    if (newTab != state.selectedGasTab) {
      state = state.copyWith(selectedGasTab: newTab);
    }
  }

  void changeEffectTabTo(ScreenTab newTab) {
    if (newTab != state.selectedEffectTab) {
      state = state.copyWith(selectedEffectTab: newTab);
    }
  }
}
