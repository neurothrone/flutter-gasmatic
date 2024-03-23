import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../core/constants/app_constants.dart';
import '../data/navigation_controller.dart';
import '../data/navigation_state.dart';
import '../data/providers.dart';
import '../domain/domain.dart';
import 'drawer_list_tile.dart';

final List<DrawerItem> _drawerItems = [
  DrawerItem(title: "Gas Volume", icon: Symbols.valve),
  DrawerItem(title: "Effect", icon: Icons.offline_bolt_rounded),
  DrawerItem(title: "About", icon: Icons.info_rounded),
  DrawerItem(title: "Settings", icon: Icons.settings_rounded)
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
          for (int index = 0; index < _drawerItems.length; index++)
            DrawerListTile(
              onTap: () {
                navigationController.navigateTo(Screen.fromIndex(index));
                Navigator.pop(context);
              },
              data: _drawerItems[index],
              isSelected: navigationState.selectedScreen.index == index,
              isEnabled: index != Screen.effect.index,
            )
        ],
      ),
    );
  }
}
