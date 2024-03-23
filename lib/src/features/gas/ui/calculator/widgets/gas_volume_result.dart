import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/constants.dart';
import '../../../data/providers.dart';

class GasVolumeResult extends StatelessWidget {
  const GasVolumeResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(text: AppLocalizations.of(context).gas_volume_title),
              const TextSpan(text: " ("),
              const TextSpan(text: "m³"),
              const TextSpan(text: ")"),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.s8),
        // TODO: localize format?
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final double gasVolume = ref.watch(gasVolumeCalculatorProvider);

            return Text(
              gasVolume.toString(),
              style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            );
          },
        ),
      ],
    );
  }
}
