import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/constants/constants.dart';
import 'core/theme/theme.dart';
import 'features/about/about_screen.dart';
import 'features/effect/ui/effect_screen.dart';
import 'features/gas/ui/gas_screen.dart';
import 'features/settings/settings_screen.dart';
import 'localization/data/localization_controller.dart';
import 'localization/data/localization_state.dart';
import 'localization/localization.dart';
import 'localization/providers.dart';
import 'navigation/data/navigation_state.dart';
import 'navigation/data/providers.dart';
import 'navigation/domain/domain.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );
    final LocalizationState localizationState = ref.watch(
      localizationStateProvider,
    );
    final LocalizationController localizationController = ref.read(
      localizationStateProvider.notifier,
    );

    return MaterialApp(
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,
      localeResolutionCallback: (locale, supportedLocales) {
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode) {
            return supportedLocale;
          }
        }

        return supportedLocales.first;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: localizationController.supportedLocales,
      locale: localizationState.currentLocale,
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
