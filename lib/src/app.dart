import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/constants/constants.dart';
import 'core/theme/theme.dart';
import 'features/about/about_screen.dart';
import 'features/effect/ui/effect_screen.dart';
import 'features/gas/ui/gas_screen.dart';
import 'features/settings/settings_screen.dart';
import 'navigation/data/navigation_state.dart';
import 'navigation/data/providers.dart';
import 'navigation/domain/screen.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );

    return MaterialApp(
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: AnimatedSwitcher(
        duration: const Duration(milliseconds: AppConstants.animationDuration),
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: switch (navigationState.selectedScreen) {
          Screen.gas => const GasScreen(),
          Screen.effect => const EffectScreen(),
          Screen.about => const AboutScreen(),
          _ => const SettingsScreen()
        },
      ),
    );
  }
}
