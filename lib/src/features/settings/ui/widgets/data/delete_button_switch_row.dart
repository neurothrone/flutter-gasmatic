import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../localization/localization.dart';

class DeleteButtonSwitchRow extends StatefulWidget {
  const DeleteButtonSwitchRow({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  State createState() => _DeleteButtonSwitchRowState();
}

class _DeleteButtonSwitchRowState extends State<DeleteButtonSwitchRow> {
  bool _isButtonEnabled = false;

  void _toggleSwitch(bool newValue) {
    setState(() => _isButtonEnabled = newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilledButton(
          onPressed: _isButtonEnabled ? widget.onPressed : null,
          style: FilledButton.styleFrom(
            backgroundColor: AppConstants.destructive,
            foregroundColor: Colors.white,
          ),
          child: Text(AppLocalizations.of(context).delete_data_title),
        ),
        Switch(
          value: _isButtonEnabled,
          activeColor: AppConstants.destructive,
          onChanged: _toggleSwitch,
        ),
      ],
    );
  }
}
