import 'package:flutter/material.dart';

const List<String> _drawerItems = ["Gas", "Effect", "About", "Settings"];

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.purpleAccent),
            child: Text("GasMatic"),
          ),
          for (int i = 0; i < _drawerItems.length; i++)
            ListTile(
              title: Text(_drawerItems[i]),
              onTap: i == selectedIndex ? null : () => onItemTapped(i),
              selected: selectedIndex == i,
              selectedTileColor: Colors.grey[300],
            ),
        ],
      ),
    );
  }
}
