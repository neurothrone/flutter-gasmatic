import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../localization/data/localization_controller.dart';
import '../../../../../localization/data/localization_state.dart';
import '../../../../../localization/providers.dart';
import '../../../../../shared/widgets/widgets.dart';

class LanguageSwitcherSheet extends ConsumerWidget {
  const LanguageSwitcherSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LocalizationController localizationController = ref.read(
      localizationStateProvider.notifier,
    );
    final LocalizationState localizationState = ref.watch(
      localizationStateProvider,
    );

    return Scaffold(
      appBar: SheetAppBar(
        title: AppLocalizations.of(context).change_language_title,
      ),
      body: ListView.separated(
        itemCount: localizationController.supportedLocales.length,
        itemBuilder: (context, index) {
          final locale = localizationController.supportedLocales[index];

          return ListTile(
            onTap: () {
              localizationController.changeLocaleTo(locale);
            },
            title: Text(locale.toString()),
            trailing: locale == localizationState.currentLocale
                ? const Icon(
                    Icons.check_circle_outline_rounded,
                    color: AppConstants.darkGold,
                  )
                : null,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: AppSizes.s0, color: Colors.white30);
        },
      ),
    );
  }
}
