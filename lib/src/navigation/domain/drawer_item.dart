import 'package:flutter/widgets.dart';

import 'domain.dart';

class DrawerItem {
  DrawerItem({
    required this.screen,
    required this.icon,
  });

  final Screen screen;
  final IconData icon;
}
