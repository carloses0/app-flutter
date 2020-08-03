abstract class AuthFingerService{
  Future<bool> getAvailableBiometrics();

  Future<bool> authenticate();

  void cancelAuthentication();
}
