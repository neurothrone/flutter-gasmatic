import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/providers.dart';

class AppVersionText extends ConsumerWidget {
  const AppVersionText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<String> appVersion = ref.watch(appVersionProvider);
    return appVersion.when(
      data: (value) => Text(value),
      loading: () => const Text("--"),
      error: (e, st) => Text(e.toString()),
    );
  }
}
