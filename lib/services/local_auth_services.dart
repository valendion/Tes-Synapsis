import 'package:local_auth/local_auth.dart';

class LocalAuthServices {
  LocalAuthentication localAuthentication = LocalAuthentication();

  Future<bool> checkBiometric() {
    return localAuthentication.canCheckBiometrics;
  }

  Future<bool> authenticatedWithBio() {
    return localAuthentication.authenticate(
        localizedReason: 'Please Authenticate',
        options: const AuthenticationOptions(
            stickyAuth: true, useErrorDialogs: true));
  }

  Future<List<BiometricType>> getBiometricTypes() {
    return localAuthentication.getAvailableBiometrics();
  }
}
