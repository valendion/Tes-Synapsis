import 'package:flutter_riverpod/flutter_riverpod.dart';

final isAvailableProvider = StateProvider<bool>((ref) => false);

final isAuthenticatedProvider = StateProvider<bool>((ref) => false);
final textBiometricProvider =
    StateProvider((ref) => 'Please check biometric available');
