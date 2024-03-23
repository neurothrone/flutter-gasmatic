import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../shared/domain/domain.dart';
import 'nominal_pipe_size_sheet.dart';

class NominalPipeSizePicker extends StatefulWidget {
  const NominalPipeSizePicker({
    super.key,
    required this.onNpsSelected,
    this.fieldKey,
  });

  final Function(NominalPipeSize) onNpsSelected;
  final Key? fieldKey;

  @override
  State<NominalPipeSizePicker> createState() => _NominalPipeSizePickerState();
}

class _NominalPipeSizePickerState extends State<NominalPipeSizePicker> {
  NominalPipeSize _selectedNps = NominalPipeSize.values.first;

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: _selectedNps.label);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      controller: _controller,
      readOnly: true,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: AppConstants.darkestBlue,
              elevation: AppDimensions.elevation,
              context: context,
              builder: (context) {
                return NominalPipeSizeSheet(
                  initialSelection: _selectedNps,
                  onNpsSelected: (NominalPipeSize selectedNps) {
                    widget.onNpsSelected(selectedNps);

                    setState(() {
                      _selectedNps = selectedNps;
                      _controller.text = _selectedNps.label;
                    });
                  },
                );
              },
            );
          },
          icon: const Icon(
            Icons.change_circle_rounded,
            color: AppConstants.darkGold,
          ),
        ),
        labelText: AppLocalizations.of(context).nps_label,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
      ),
    );
  }
}
