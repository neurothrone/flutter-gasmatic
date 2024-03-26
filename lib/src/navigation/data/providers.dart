import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/preferences/preferences.dart';
import '../../services/providers.dart';
import 'navigation_controller.dart';
import 'navigation_state.dart';

final navigationControllerProvider =
    StateNotifierProvider.autoDispose<NavigationController, NavigationState>(
        (ref) {
  final IPreferencesService service = ref.read(preferencesServiceProvider);
  final controller = NavigationController(preferencesService: service);
  controller.loadSavedState();
  return controller;
});
