import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../../../shared/domain/domain.dart';
import '../../../data/gas_volume_form_controller.dart';
import '../../../data/gas_volume_form_state.dart';
import '../../../data/providers.dart';
import 'nominal_pipe_size_picker.dart';
import 'pressure_segmented_button.dart';

class GasVolumeCalculatorForm extends ConsumerStatefulWidget {
  const GasVolumeCalculatorForm({
    super.key,
  });

  @override
  ConsumerState<GasVolumeCalculatorForm> createState() =>
      _GasVolumeCalculateFormState();
}

class _GasVolumeCalculateFormState
    extends ConsumerState<GasVolumeCalculatorForm> {
  late final TextEditingController _lengthController;
  late final TextEditingController _pressureController;

  late final GasVolumeFormController _formController;

  @override
  void initState() {
    super.initState();
    _initControllers();
  }

  @override
  void dispose() {
    _disposeOfControllers();
    super.dispose();
  }

  void _initControllers() {
    _formController = ref.read(gasVolumeFormProvider.notifier);

    _lengthController = TextEditingController();
    _pressureController = TextEditingController();
  }

  void _disposeOfControllers() {
    _lengthController.dispose();
    _pressureController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GasVolumeFormState formState = ref.watch(gasVolumeFormProvider);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSizes.s20),
          NominalPipeSizePicker(
            onNpsSelected: (NominalPipeSize selectedNps) {
              _formController.changeSelectedNps(selectedNps);
            },
          ),
          const SizedBox(height: AppSizes.s20),
          CustomTextFormField(
            controller: _lengthController,
            onChanged: _formController.changeLengthString,
            onClear: () => _formController.changeLengthString(""),
            labelText: AppLocalizations.of(context).length_label,
            hintText: AppLocalizations.of(context).length_placeholder,
            keyboardType: const TextInputType.numberWithOptions(
              signed: false,
              decimal: true,
            ),
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return "Please enter a valid length".toLocalize;
            //   }
            //   return null;
            // }
          ),
          const SizedBox(height: AppSizes.s20),
          SwitchListTile(
            title: Text(AppLocalizations.of(context).custom_pressure_switch),
            secondary: const Icon(CupertinoIcons.gauge),
            activeTrackColor: AppConstants.darkerGold,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
            ),
            // value: _isCustomPressure,
            value: formState.isCustomPressure,
            onChanged: (_) {
              ref.read(gasVolumeFormProvider.notifier).toggleIsCustomPressure();
            },
          ),
          const SizedBox(height: AppSizes.s20),
          if (formState.isCustomPressure)
            CustomTextFormField(
              controller: _pressureController,
              onChanged: _formController.changePressureString,
              onClear: () => _formController.changePressureString(""),
              labelText: AppLocalizations.of(context).pressure_label,
              hintText: AppLocalizations.of(context).pressure_placeholder,
              keyboardType: const TextInputType.numberWithOptions(
                signed: false,
                decimal: true,
              ),
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return "Please enter a valid pressure".toLocalize;
              //   }
              //   return null;
              // }
            )
          else
            PressureSegmentedButton(
              initialSelection: formState.selectedPressure,
              onPressureSelected: (Pressure selectedPressure) {
                _formController.changeSelectedPressure(selectedPressure);
              },
            ),
          // const SizedBox(height: AppSizes.s40),
          // PrimaryButton(
          //   onPressed: formState.isValid ? _formController.calculate : null,
          //   width: double.infinity,
          //   height: AppSizes.s58,
          //   label: "Calculate".toLocalize,
          // ),
        ],
      ),
    );
  }
}
