abstract interface class ILauncherService {
  Future<void> launchLinkedinWebLink();

  Future<void> launchNpsWebLink();

  Future<void> composeSupportEmail();
}
