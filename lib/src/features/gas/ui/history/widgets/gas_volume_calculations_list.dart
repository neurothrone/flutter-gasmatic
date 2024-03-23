import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../../../shared/models/models.dart';
import 'gas_volume_history_card.dart';

class GasVolumeCalculationsList extends StatelessWidget {
  const GasVolumeCalculationsList({
    super.key,
    required this.calculations,
    required this.onDelete,
  });

  final List<GasVolumeCalculation> calculations;
  final Function(GasVolumeCalculation) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppSizes.s20),
      itemCount: calculations.length,
      itemBuilder: (BuildContext _, int index) {
        final GasVolumeCalculation calculation = calculations[index];

        return CustomDismissible(
          key: ValueKey(calculation.id),
          onDelete: () => onDelete(calculation),
          child: GasVolumeHistoryCard(calculation: calculation),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: AppSizes.s20),
    );
  }
}
