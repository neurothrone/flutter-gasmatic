import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../core/constants/constants.dart';
import '../data/navigation_controller.dart';
import '../data/navigation_state.dart';
import '../data/providers.dart';
import '../domain/domain.dart';
import 'drawer_list_tile.dart';

final List<DrawerItem> _drawerItems = [
  DrawerItem(screen: Screen.gas, icon: Symbols.valve),
  DrawerItem(screen: Screen.effect, icon: Icons.offline_bolt_rounded),
  DrawerItem(screen: Screen.about, icon: Icons.info_rounded),
  DrawerItem(screen: Screen.settings, icon: Icons.settings_rounded)
];

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final NavigationController navigationController = ref.read(
      navigationControllerProvider.notifier,
    );
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );

    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 150,
            child: Center(
              child: Text(
                AppConstants.appTitle,
                style: theme.textTheme.displayMedium,
              ),
            ),
          ),
          // TODO: remove conditional once effect is implemented
          for (int index = 0; index < _drawerItems.length; index++) ...[
            if (index != Screen.effect.index)
              DrawerListTile(
                onTap: () {
                  navigationController.navigateTo(Screen.fromIndex(index));
                  Navigator.pop(context);
                },
                item: _drawerItems[index],
                isSelected: navigationState.selectedScreen.index == index,
                isEnabled: index != Screen.effect.index,
              )
          ],
        ],
      ),
    );
  }
}
