import 'package:flutter/material.dart';

class CenteredErrorWidget extends StatelessWidget {
  const CenteredErrorWidget({
    super.key,
    required this.error,
  });

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.toString()),
    );
  }
}
