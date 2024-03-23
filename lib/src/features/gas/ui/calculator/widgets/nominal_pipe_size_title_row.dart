import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../shared/domain/domain.dart';

class NominalPipeSizeTitleRow extends StatelessWidget {
  const NominalPipeSizeTitleRow({
    super.key,
    required this.currentNps,
  });

  final NominalPipeSize currentNps;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NPS",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16.0,
              ),
            ),
            Text(
              "DN",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        const SizedBox(width: AppSizes.s10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentNps.nps,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${currentNps.dn}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
