import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/preferences/preferences.dart';
import '../domain/domain.dart';
import 'navigation_state.dart';

class NavigationController extends StateNotifier<NavigationState> {
  NavigationController({
    required IPreferencesService preferencesService,
  })  : _preferencesService = preferencesService,
        super(NavigationState.initial());

  final IPreferencesService _preferencesService;

  Future<void> loadSavedState() async {
    final screen = await _preferencesService.getScreen();
    final gasTab = await _preferencesService.getGasTab();
    state = state.copyWith(
      selectedScreen: screen,
      selectedGasTab: gasTab,
    );
  }

  Future<void> _saveScreen() async {
    await _preferencesService.setScreen(state.selectedScreen);
  }

  Future<void> _saveGasTab() async {
    await _preferencesService.setGasTab(state.selectedGasTab);
  }

  void navigateTo(Screen newScreen) {
    if (newScreen != state.selectedScreen) {
      state = state.copyWith(selectedScreen: newScreen);
      _saveScreen();
    }
  }

  void changeGasTabTo(ScreenTab newTab) {
    if (newTab != state.selectedGasTab) {
      state = state.copyWith(selectedGasTab: newTab);
      _saveGasTab();
    }
  }

  void changeEffectTabTo(ScreenTab newTab) {
    if (newTab != state.selectedEffectTab) {
      state = state.copyWith(selectedEffectTab: newTab);
    }
  }
}
