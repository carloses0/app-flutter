import 'package:app/util/constantes/mensagem_util.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AuthFinger {
  final LocalAuthentication _local = LocalAuthentication();

  Future<bool> getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics = await _local.getAvailableBiometrics();
    return availableBiometrics.contains(BiometricType.fingerprint) ? true : false;
  }

  Future<bool> authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await _local.authenticateWithBiometrics(
          localizedReason: MensagemUtil.FINGERPRINT,
          useErrorDialogs: true,
          stickyAuth: true);
    } on PlatformException catch (e) {
      print(e);
    }
    return authenticated;
  }

  void cancelAuthentication() {
    _local.stopAuthentication();
  }

}
