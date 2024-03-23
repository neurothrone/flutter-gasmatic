import 'package:flutter/material.dart';

import '../../../../../shared/domain/domain.dart';
import 'nominal_pipe_size_list.dart';

class NominalPipeSizeSheet extends StatefulWidget {
  const NominalPipeSizeSheet({
    super.key,
    required this.initialSelection,
    required this.onNpsSelected,
  });

  final NominalPipeSize initialSelection;
  final Function(NominalPipeSize) onNpsSelected;

  @override
  State<NominalPipeSizeSheet> createState() => _NominalPipeSizeSheetState();
}

class _NominalPipeSizeSheetState extends State<NominalPipeSizeSheet> {
  late NominalPipeSize _selectedNps;

  @override
  void initState() {
    super.initState();
    _selectedNps = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NominalPipeSizeList(
        selectedNps: _selectedNps,
        onNpsSelected: (NominalPipeSize newSelection) {
          widget.onNpsSelected(newSelection);
          setState(() => _selectedNps = newSelection);
        },
      ),
    );
  }
}
