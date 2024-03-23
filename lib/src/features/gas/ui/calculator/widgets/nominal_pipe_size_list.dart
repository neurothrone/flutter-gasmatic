import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../shared/domain/domain.dart';
import 'nominal_pipe_size_title_row.dart';

class NominalPipeSizeList extends StatelessWidget {
  const NominalPipeSizeList({
    super.key,
    required this.selectedNps,
    required this.onNpsSelected,
  });

  final NominalPipeSize selectedNps;
  final Function(NominalPipeSize) onNpsSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: NominalPipeSize.values.length,
      itemBuilder: (context, index) {
        final currentNps = NominalPipeSize.values[index];

        return ListTile(
          onTap: () => onNpsSelected(currentNps),
          title: NominalPipeSizeTitleRow(currentNps: currentNps),
          trailing: selectedNps == currentNps
              ? const Icon(
                  Icons.check_circle_outline_rounded,
                  color: AppConstants.darkGold,
                )
              : null,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: AppSizes.s0, color: Colors.grey);
      },
    );
  }
}
