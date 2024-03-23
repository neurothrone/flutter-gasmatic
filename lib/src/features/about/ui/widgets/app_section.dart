import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class AppSection extends StatelessWidget {
  const AppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppConstants.appTitle,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(height: 1),
        SizedBox(height: AppSizes.s10),
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                "Version",
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
            // Text("Version"),
            Text("1.0"),
          ],
        ),
        SizedBox(height: AppSizes.s10),
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                "Developer",
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
            Text("Zane Neurothrone"),
          ],
        ),
      ],
    );
  }
}
