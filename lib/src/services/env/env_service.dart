import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'ienv_service.dart';

class EnvService implements IEnvService {
  @override
  String getLinkedinUrl() {
    return dotenv.get("LINKEDIN_URL");
  }

  @override
  String getSupportEmail() {
    return dotenv.get("SUPPORT_EMAIL");
  }
}
