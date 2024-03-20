import 'package:flutter/material.dart';

import '../../navigation/screen_tab.dart';

class EffectScreen extends StatelessWidget {
  const EffectScreen({
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
