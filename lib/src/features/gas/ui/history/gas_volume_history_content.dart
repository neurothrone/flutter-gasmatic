import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
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

class EmptyCalculationsPlaceholder extends StatelessWidget {
  const EmptyCalculationsPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No calculations yet",
            style:
                theme.textTheme.displaySmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: AppSizes.s20),
          const Icon(
            Icons.sentiment_neutral_sharp,
            color: Colors.white70,
            size: AppSizes.s40 * 2,
          ),
        ],
      ),
    );
  }
}
