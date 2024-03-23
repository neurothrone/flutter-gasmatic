import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/utils.dart';
import '../data/navigation_controller.dart';
import '../data/navigation_state.dart';
import '../data/providers.dart';
import '../domain/domain.dart';

class CustomNavigationBar extends ConsumerWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationController navigationController = ref.read(
      navigationControllerProvider.notifier,
    );
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );

    return NavigationBar(
      onDestinationSelected: (int tabIndex) {
        final newTab = ScreenTab.fromIndex(tabIndex);
        if (navigationState.selectedScreen == Screen.gas) {
          navigationController.changeGasTabTo(newTab);
        } else {
          navigationController.changeEffectTabTo(newTab);
        }
      },
      selectedIndex: navigationState.selectedScreen == Screen.gas
          ? navigationState.selectedGasTab.index
          : navigationState.selectedEffectTab.index,
      destinations: ScreenTab.values
          .map(
            (tab) => NavigationDestination(
              icon: Icon(
                tab.icon,
                color: AppConstants.darkGold,
              ),
              selectedIcon: Icon(
                tab.icon,
                color: AppConstants.lightBlue,
              ),
              label: tab.name.capitalized,
            ),
          )
          .toList(),
    );
  }
}
