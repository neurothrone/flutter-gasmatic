import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/constants.dart';
import '../env/env.dart';
import 'ilauncher_service.dart';

class LauncherService implements ILauncherService {
  LauncherService({
    required IEnvService dotEnvService,
  }) : _dotEnvService = dotEnvService;

  final IEnvService _dotEnvService;

  @override
  Future<void> launchLinkedinWebLink() async {
    final Uri linkedinUrl = Uri(
      scheme: "https",
      path: _dotEnvService.getLinkedinUrl(),
    );
    if (!await launchUrl(linkedinUrl, mode: LaunchMode.externalApplication)) {
      throw Exception("❌ -> Could not launch $linkedinUrl");
    }
  }

  @override
  Future<void> launchNpsWebLink() async {
    final Uri npsUrl = Uri(
      scheme: "https",
      path: "en.wikipedia.org/wiki/Nominal_Pipe_Size",
    );
    if (!await launchUrl(npsUrl, mode: LaunchMode.externalApplication)) {
      throw Exception("❌ -> Could not launch $npsUrl");
    }
  }

  @override
  Future<void> composeSupportEmail() async {
    final emailUrl = Uri(
      scheme: "mailto",
      path: _dotEnvService.getSupportEmail(),
      query: "subject=${AppConstants.appTitle} Support",
    );

    await launchUrl(emailUrl, mode: LaunchMode.platformDefault);
  }
}
