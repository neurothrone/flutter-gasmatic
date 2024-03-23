import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';

class EmptyCalculationsPlaceholder extends StatelessWidget {
  const EmptyCalculationsPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context).empty_calculations_text,
            style: theme.textTheme.displaySmall?.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: AppSizes.s20),
          const Icon(
            Icons.sentiment_neutral_sharp,
            color: Colors.white70,
            size: AppSizes.s40 * 2,
          ),
        ],
      ),
    );
  }
}
