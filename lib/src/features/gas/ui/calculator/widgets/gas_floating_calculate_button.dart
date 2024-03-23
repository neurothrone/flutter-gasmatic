import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../../data/providers.dart';

class GasFloatingCalculateButton extends ConsumerWidget {
  const GasFloatingCalculateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isFormValid = ref.watch(gasVolumeFormProvider).isValid;

    return FloatingCalculateButton(
      onPressed: isFormValid
          ? () => ref.read(gasVolumeFormProvider.notifier).calculate()
          : null,
    );
  }
}
