import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.onPressed,
    this.horizontalPadding = AppSizes.s0,
    required this.title,
    required this.subtitle,
    this.icon = Icons.link_rounded,
    this.iconColor = AppConstants.darkGold,
  });

  final VoidCallback onPressed;
  final double horizontalPadding;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        onPressed: onPressed,
        iconSize: AppSizes.s44,
        visualDensity: VisualDensity.compact,
        icon: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
