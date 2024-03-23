import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/widgets.dart';
import '../../../../shared/models/models.dart';
import '../../data/providers.dart';
import 'widgets/widgets.dart';

class GasVolumeHistoryContent extends ConsumerWidget {
  const GasVolumeHistoryContent({super.key});

  Future<void> _deleteCalculation(
    GasVolumeCalculation calculation,
    WidgetRef ref,
  ) async {
    ref
        .read(gasVolumeCalculationListProvider.notifier)
        .deleteCalculation(calculation);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<GasVolumeCalculation>> calculationsValue = ref.watch(
      gasVolumeCalculationListProvider,
    );

    return AsyncValueWidget(
      value: calculationsValue,
      data: (List<GasVolumeCalculation> calculations) {
        if (calculations.isEmpty) {
          return const EmptyCalculationsPlaceholder();
        }

        return GasVolumeCalculationsList(
          calculations: calculations,
          onDelete: (GasVolumeCalculation calculation) => _deleteCalculation(
            calculation,
            ref,
          ),
        );
      },
    );
  }
}


