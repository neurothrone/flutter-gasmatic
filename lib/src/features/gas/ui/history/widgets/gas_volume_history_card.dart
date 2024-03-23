import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../shared/models/models.dart';
import 'gas_volume_history_card_row.dart';

class GasVolumeHistoryCard extends StatelessWidget {
  const GasVolumeHistoryCard({
    super.key,
    required this.calculation,
  });

  final GasVolumeCalculation calculation;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppConstants.darkBlue,
      shadowColor: AppConstants.darkBlue,
      elevation: AppDimensions.elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.borderRadius,
        ),
      ),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.s16),
        child: Column(
          children: [
            GasVolumeHistoryCardRow(
              leftText: AppLocalizations.of(context).nps,
              rightText: calculation.nominalPipeSize.label,
            ),
            const SizedBox(height: AppSizes.s4),
            GasVolumeHistoryCardRow(
              leftText: AppLocalizations.of(context).length,
              rightText: calculation.length.toString(),
            ),
            const SizedBox(height: AppSizes.s4),
            GasVolumeHistoryCardRow(
              leftText: AppLocalizations.of(context).pressure,
              rightText: calculation.pressure.toString(),
            ),
            const SizedBox(height: AppSizes.s4),
            GasVolumeHistoryCardRow(
              leftText: AppLocalizations.of(context).gas_volume_title,
              rightText: calculation.gasVolume.toString(),
            ),
            const SizedBox(height: AppSizes.s4),
            GasVolumeHistoryCardRow(
              leftText: AppLocalizations.of(context).calculated_date,
              rightText: calculation.calculatedAt.formatted,
              isProminent: false,
            ),
          ],
        ),
      ),
    );
  }
}
