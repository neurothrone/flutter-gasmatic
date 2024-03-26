import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class SheetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SheetAppBar({
    super.key,
    required this.title,
    this.showDivider = true,
  });

  final String title;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      shape: showDivider
          ? const Border(
              bottom: BorderSide(
                color: Colors.white30,
                width: 1,
              ),
            )
          : null,
      elevation: AppDimensions.elevation,
      centerTitle: true,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
