import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../localization/localization.dart';

class CreditsSection extends StatelessWidget {
  const CreditsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).credits_header,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        const SizedBox(height: AppSizes.s20),
        Text(AppLocalizations.of(context).app_icon_credit),
      ],
    );
  }
}
