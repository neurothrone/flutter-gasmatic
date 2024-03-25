import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../localization/localization.dart';
import '../../../data/providers.dart';
import '../../../data/settings_controller.dart';
import 'delete_button_switch_row.dart';

class DeleteDataSheet extends StatelessWidget {
  const DeleteDataSheet({super.key});

  void _showSnackbar(ScaffoldMessengerState state, String message) {
    final snackBar = SnackBar(
      backgroundColor: Colors.white,
      elevation: AppDimensions.elevation,
      content: Row(
        children: [
          const Icon(
            Icons.info_rounded,
            color: AppConstants.darkBlue,
          ),
          const SizedBox(width: AppSizes.s10),
          Text(
            message,
            style: const TextStyle(
              color: AppConstants.darkBlue,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
    state.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(AppLocalizations.of(context).delete_data_title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context).delete_data_warning),
            const SizedBox(height: AppSizes.s10),
            Container(
              padding: const EdgeInsets.all(AppSizes.s10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
                color: AppConstants.darkBlue,
              ),
              child: Row(
                children: [
                  const Icon(Icons.info_rounded),
                  const SizedBox(width: AppSizes.s10),
                  Text(AppLocalizations.of(context).delete_data_info),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.s10),
            Consumer(builder: (_, WidgetRef ref, __) {
              final SettingsController controller = ref.read(
                settingsControllerProvider,
              );

              return DeleteButtonSwitchRow(
                onPressed: () async {
                  Navigator.of(context).pop();

                  final state = ScaffoldMessenger.of(context);
                  final message =
                      AppLocalizations.of(context).delete_snackbar_message;

                  final wasSuccessful = await controller.deleteAllData();
                  if (wasSuccessful) {
                    _showSnackbar(state, message);
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
