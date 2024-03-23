import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/constants.dart';
import '../../../navigation/data/navigation_state.dart';
import '../../../navigation/data/providers.dart';
import '../../../navigation/domain/domain.dart';
import '../../../navigation/widgets/widgets.dart';
import 'calculator/widgets/widgets.dart';

class EffectScreen extends ConsumerWidget {
  const EffectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState state = ref.watch(
      navigationControllerProvider,
    );

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const AppDrawer(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: state.selectedEffectTab == ScreenTab.calculator
          ? const EffectFloatingCalculateButton()
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: state.selectedEffectTab.index,
        children: [
          Center(child: Text(AppLocalizations.of(context).calculator_tab)),
          Center(child: Text(AppLocalizations.of(context).history_tab)),
        ],
      ),
    );
  }
}
