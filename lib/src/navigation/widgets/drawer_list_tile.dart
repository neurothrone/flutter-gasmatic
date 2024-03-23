import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../domain/domain.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.onTap,
    required this.item,
    required this.isSelected,
    this.isEnabled = true,
  });

  final VoidCallback onTap;
  final DrawerItem item;
  final bool isSelected;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return isEnabled
        ? ListTile(
            onTap: isSelected ? null : onTap,
            leading: Icon(
              item.icon,
              color: Colors.white,
              fill: 1.0,
            ),
            title: Text(
              item.screen.localizedTitle(context),
              style: const TextStyle(color: Colors.white),
            ),
            selected: isSelected,
            selectedTileColor: AppConstants.darkerGold,
          )
        : ListTile(
            onTap: null,
            leading: Icon(
              item.icon,
              color: Colors.grey[300],
              fill: 1.0,
            ),
            title: Text(
              item.screen.localizedTitle(context),
              style: TextStyle(color: Colors.grey[300]),
            ),
            trailing: const Icon(
              Icons.construction_rounded,
              color: AppConstants.darkGold,
              fill: 1.0,
            ),
          );
  }
}
