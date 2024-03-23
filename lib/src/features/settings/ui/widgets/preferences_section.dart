import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../localization/data/localization_controller.dart';
import '../../../../localization/data/localization_state.dart';
import '../../../../localization/providers.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).preferences_header,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        // CustomListTile(
        //   onPressed: () {},
        //   title: "Change Language",
        //   subtitle: "en-SE",
        //   icon: Icons.language_rounded,
        // ),
        const LanguageSwitcher(),
      ],
    );
  }
}

class LanguageSwitcher extends ConsumerWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LocalizationController localizationController = ref.read(
      localizationStateProvider.notifier,
    );
    final LocalizationState localizationState = ref.watch(
      localizationStateProvider,
    );

    return Row(
      children: [
        Text(AppLocalizations.of(context)!.helloWorld),
        const SizedBox(width: AppSizes.s40),
        Localizations.override(
          context: context,
          locale: localizationState.currentLocale,
          child: Text(AppLocalizations.of(context)!.helloWorld),
        ),
        const SizedBox(width: AppSizes.s40),
        Text(localizationState.currentLocale.toString()),
        const SizedBox(width: AppSizes.s20),
        Text(Localizations.localeOf(context).toString()),
        const SizedBox(width: AppSizes.s20),
        DropdownButton(
          onChanged: (Locale? locale) {
            if (locale != null) {
              localizationController.changeLocaleTo(locale);
            }
          },
          value: Localizations.localeOf(context),
          // value: localizationState.currentLocale,
          // items: AppLocalizations.supportedLocales
          items: localizationController.supportedLocales
              .map(
                (locale) => DropdownMenuItem(
                  value: locale,
                  child: Text(
                    locale.toString(),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
