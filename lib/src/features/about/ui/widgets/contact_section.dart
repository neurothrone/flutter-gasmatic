import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../services/providers.dart';
import '../../../../shared/widgets/widgets.dart';

class ContactSection extends ConsumerWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final launcherService = ref.read(launcherServiceProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contact",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        CustomListTile(
          onPressed: launcherService.composeSupportEmail,
          title: "Support",
          subtitle: "This will open the default email app",
        ),
        CustomListTile(
          onPressed: launcherService.launchLinkedinWebLink,
          title: "LinkedIn",
          subtitle: "This will open a browser",
        ),
      ],
    );
  }
}
