import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../navigation/data/navigation_state.dart';
import '../../../navigation/data/providers.dart';
import '../../../navigation/widgets/widgets.dart';
import 'calculator/gas_volume_calculator_content.dart';
import 'calculator/widgets/widgets.dart';
import 'history/gas_volume_history_content.dart';

class GasScreen extends ConsumerWidget {
  const GasScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const AppDrawer(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const GasFloatingCalculateButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: navigationState.selectedGasTab.index,
        children: const [
          GasVolumeCalculatorContent(),
          GasVolumeHistoryContent(),
        ],
      ),
    );
  }
}
