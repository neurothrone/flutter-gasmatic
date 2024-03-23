import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../services/providers.dart';
import '../../../../shared/widgets/widgets.dart';

class GasVolumeSection extends StatelessWidget {
  const GasVolumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Gas Volume",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        Consumer(builder: (_, WidgetRef ref, __) {
          return CustomListTile(
            onPressed: ref.read(launcherServiceProvider).launchNpsWebLink,
            title: "Learn more about NPS standards",
            subtitle: "This will open a browser",
          );
        }),
      ],
    );
  }
}
