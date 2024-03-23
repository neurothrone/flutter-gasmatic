import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';

class GasVolumeHistoryCardRow extends StatelessWidget {
  const GasVolumeHistoryCardRow({
    super.key,
    required this.leftText,
    required this.rightText,
    this.isProminent = true,
  });

  final String leftText;
  final String rightText;
  final bool isProminent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leftText,
          style: TextStyle(
            color:
                isProminent ? AppConstants.lightGold : AppConstants.darkerGold,
            fontSize: 15.0,
          ),
        ),
        const Spacer(),
        Text(
          rightText,
          style: TextStyle(
            color: isProminent ? Colors.white : Colors.white70,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
