import 'package:flutter/material.dart';

import '../navigation/screen_tab.dart';

class GasScreen extends StatelessWidget {
  const GasScreen({
    super.key,
    required this.selectedTab,
  });

  final ScreenTab selectedTab;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(selectedTab == ScreenTab.calculator ? "Calculator" : "History"),
    );
  }
}
