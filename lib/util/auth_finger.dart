import 'package:local_auth/local_auth.dart';

class AuthFinger{
  final LocalAuthentication local = LocalAuthentication();
  bool _canCheckBiometrics;
  List<BiometricType> _availableBiometrics;
  bool _isAuthenticating = false;

}
