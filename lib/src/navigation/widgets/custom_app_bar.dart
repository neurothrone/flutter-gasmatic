import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/navigation_state.dart';
import '../data/providers.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navigationState = ref.watch(
      navigationControllerProvider,
    );
    return AppBar(
      title: Text(navigationState.selectedScreen.localizedTitle(context)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
