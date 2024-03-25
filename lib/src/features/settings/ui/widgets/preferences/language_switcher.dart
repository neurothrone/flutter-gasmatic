import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../localization/data/localization_state.dart';
import '../../../../../localization/localization.dart';
import '../../../../../localization/providers.dart';
import '../../../../../shared/widgets/widgets.dart';
import 'language_switcher_sheet.dart';

class LanguageSwitcher extends ConsumerWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LocalizationState localizationState = ref.watch(
      localizationStateProvider,
    );
    return CustomListTile(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.75,
              builder: (_, __) {
                return const LanguageSwitcherSheet();
              },
            );
          },
        );
      },
      title: AppLocalizations.of(context).change_language_title,
      subtitle: localizationState.currentLocale.toString(),
      icon: Icons.language_rounded,
    );
  }
}
