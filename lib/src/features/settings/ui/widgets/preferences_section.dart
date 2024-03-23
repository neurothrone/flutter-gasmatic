import 'package:flutter/material.dart';

import '../../../../shared/widgets/widgets.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Preferences",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        CustomListTile(
          onPressed: () {},
          title: "Change Language",
          subtitle: "en-SE",
          icon: Icons.language_rounded,
        ),
      ],
    );
  }
}
