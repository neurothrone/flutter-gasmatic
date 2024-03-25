import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../localization/localization.dart';

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
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                AppLocalizations.of(context).version_label,
                style: const TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
            // Text("Version"),
            const Text("1.0"),
          ],
        ),
        const SizedBox(height: AppSizes.s10),
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                AppLocalizations.of(context).developer_label,
                style: const TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
            const Text("Zane Neurothrone"),
          ],
        ),
      ],
    );
  }
}
