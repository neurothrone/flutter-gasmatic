import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
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
        Text(
          AppLocalizations.of(context).contact_header,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        CustomListTile(
          onPressed: launcherService.composeSupportEmail,
          title: AppLocalizations.of(context).support_title,
          subtitle: AppLocalizations.of(context).support_subtitle,
        ),
        CustomListTile(
          onPressed: launcherService.launchLinkedinWebLink,
          title: AppLocalizations.of(context).linkedin_title,
          subtitle: AppLocalizations.of(context).linkedin_subtitle,
        ),
      ],
    );
  }
}
