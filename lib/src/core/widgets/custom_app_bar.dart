import 'package:flutter/material.dart';

import '../utils/utils.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     required this.currentRoute,
//   });
//
//   final AppRoute currentRoute;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: IconButton(
//         onPressed: currentRoute != AppRoute.home
//             ? () => context.goNamed(AppRoute.home.name)
//             : null,
//         icon: const Icon(Icons.home_rounded),
//         tooltip: "Home".toLocalize,
//       ),
//       automaticallyImplyLeading: false,
//       title: Text(currentRoute.title),
//       actions: [
//         IconButton(
//           onPressed: currentRoute != AppRoute.settings
//               ? () => context.goNamed(AppRoute.settings.name)
//               : null,
//           icon: const Icon(Icons.settings),
//           tooltip: "Settings".toLocalize,
//         ),
//       ],
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
