import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CenteredProgressIndicator extends StatelessWidget {
  const CenteredProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppConstants.darkGold,
      ),
    );
  }
}
