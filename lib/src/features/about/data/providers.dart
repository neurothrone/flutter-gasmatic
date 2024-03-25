import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/app_info/app_info.dart';
import '../../../services/providers.dart';

final appVersionProvider = FutureProvider.autoDispose<String>((ref) async {
  final IAppInfoService service = ref.read(appInfoServiceProvider);
  return await service.appVersion();
});
