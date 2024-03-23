import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../shared/domain/domain.dart';

class PressureSegmentedButton extends StatefulWidget {
  const PressureSegmentedButton({
    super.key,
    required this.initialSelection,
    required this.onPressureSelected,
  });

  final Pressure initialSelection;
  final Function(Pressure) onPressureSelected;

  @override
  State<PressureSegmentedButton> createState() =>
      _PressureSegmentedButtonState();
}

class _PressureSegmentedButtonState extends State<PressureSegmentedButton> {
  late Pressure _selectedPressure;

  @override
  void initState() {
    super.initState();
    _selectedPressure = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SegmentedButton(
          segments: Pressure.values
              .map(
                (pressure) => ButtonSegment(
                  value: pressure,
                  label: Text(
                    pressure.label,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
              .toList(),
          selected: <Pressure>{_selectedPressure},
          onSelectionChanged: (Set<Pressure> newSelection) {
            // By default there is only a single segment that can be
            // selected at one time, so its value is always the first
            // item in the selected set.
            setState(() => _selectedPressure = newSelection.first);
            widget.onPressureSelected(_selectedPressure);
          },
          showSelectedIcon: false,
          style: ButtonStyle(
            animationDuration: const Duration(
              milliseconds: AppConstants.animationDuration,
            ),
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.selected)
                  ? AppConstants.darkGold
                  : AppConstants.darkerGold;
            }),
            foregroundColor: MaterialStateProperty.all(
              AppConstants.lightBlue,
            ),
            side: MaterialStateProperty.all(
              const BorderSide(color: AppConstants.darkestBlue),
            ),
          ),
        ),
      ],
    );
  }
}
