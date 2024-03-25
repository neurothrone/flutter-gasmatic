import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class SheetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SheetAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      shape: const Border(
        bottom: BorderSide(
          color: Colors.white30,
          width: 1,
        ),
      ),
      elevation: AppDimensions.elevation,
      centerTitle: true,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
