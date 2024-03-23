import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../services/providers.dart';
import '../../../../shared/widgets/widgets.dart';

class GasVolumeSection extends StatelessWidget {
  const GasVolumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).gas_volume_title,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        Consumer(builder: (_, WidgetRef ref, __) {
          return CustomListTile(
            onPressed: ref.read(launcherServiceProvider).launchNpsWebLink,
            title: AppLocalizations.of(context).nps_standards_title,
            subtitle: AppLocalizations.of(context).nps_standards_subtitle,
          );
        }),
      ],
    );
  }
}
