import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../localization/localization.dart';
import 'app_version_text.dart';
import 'info_row.dart';

class AppSection extends StatelessWidget {
  const AppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppConstants.appTitle,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        const SizedBox(height: AppSizes.s10),
        InfoRow(
          label: AppLocalizations.of(context).version_label,
          child: const AppVersionText(),
        ),
        const SizedBox(height: AppSizes.s10),
        InfoRow(
          label: AppLocalizations.of(context).developer_label,
          child: const Text("Zane Neurothrone"),
        ),
      ],
    );
  }
}
