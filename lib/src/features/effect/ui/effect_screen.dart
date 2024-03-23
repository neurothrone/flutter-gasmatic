import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../navigation/data/navigation_state.dart';
import '../../../navigation/data/providers.dart';
import '../../../navigation/widgets/widgets.dart';
import 'calculator/widgets/widgets.dart';

class EffectScreen extends ConsumerWidget {
  const EffectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const AppDrawer(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const EffectFloatingCalculateButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: navigationState.selectedEffectTab.index,
        children: const [
          Center(child: Text("Effect Calculator")),
          Center(child: Text("Effect History")),
        ],
      ),
    );
  }
}
