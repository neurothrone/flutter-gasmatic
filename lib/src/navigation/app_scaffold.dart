import 'package:flutter/material.dart';

import '../about/about_screen.dart';
import '../effect/effect_screen.dart';
import '../gas/gas_screen.dart';
import '../settings/settings_screen.dart';
import 'app_drawer.dart';
import 'screen.dart';
import 'screen_tab.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  Screen _selectedScreen = Screen.gas;
  ScreenTab _selectedGasTab = ScreenTab.calculator;
  ScreenTab _selectedEffectTab = ScreenTab.calculator;

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreen = Screen.fromIndex(index);
    });
    Navigator.pop(context);
  }

  void _onTabItemTapped(int index) {
    setState(() {
      if (_selectedScreen == Screen.gas) {
        _selectedGasTab = ScreenTab.fromIndex(index);
      } else {
        _selectedEffectTab = ScreenTab.fromIndex(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedScreen.title()),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: AppDrawer(
        selectedIndex: _selectedScreen.index,
        onItemTapped: _onItemTapped,
      ),
      bottomNavigationBar: _selectedScreen.index > 1
          ? null
          : BottomNavigationBar(
              onTap: _onTabItemTapped,
              currentIndex: _selectedScreen == Screen.gas
                  ? _selectedGasTab.index
                  : _selectedEffectTab.index,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "Calculator",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "History",
                ),
              ],
            ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: switch (_selectedScreen) {
          Screen.gas => GasScreen(selectedTab: _selectedGasTab),
          Screen.effect => EffectScreen(selectedTab: _selectedEffectTab),
          Screen.about => const AboutScreen(),
          _ => const SettingsScreen()
        },
      ),
    );
  }
}
