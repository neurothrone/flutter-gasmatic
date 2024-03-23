import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation_controller.dart';
import 'navigation_state.dart';

final navigationControllerProvider =
    StateNotifierProvider.autoDispose<NavigationController, NavigationState>(
        (ref) {
  return NavigationController();
});
