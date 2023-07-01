import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:tes_synpsis/provider/biometric_provider.dart';
import 'package:tes_synpsis/services/local_auth_services.dart';
import 'package:tes_synpsis/utils/text_string.dart';

class FirstScreen extends ConsumerWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var localAuthenticationServices = LocalAuthServices();
    var isAvailable = ref.watch(isAvailableProvider);
    var isAuthenticated = ref.watch(isAuthenticatedProvider);
    var textBiometric = ref.watch(textBiometricProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextString.halamanPertama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  ref.read(isAvailableProvider.notifier).state =
                      await localAuthenticationServices
                          .checkBiometric()
                          .then((value) async {
                    if (value) {
                      List<BiometricType> types =
                          await localAuthenticationServices.getBiometricTypes();

                      for (var item in types) {
                        ref.read(textBiometricProvider.notifier).state +=
                            '\n- $item';
                      }
                    }
                    return value;
                  });
                },
                child: const Text(TextString.checkBiometric),
              ),
              ElevatedButton(
                onPressed: isAvailable
                    ? () async {
                        ref.read(isAuthenticatedProvider.notifier).state =
                            await localAuthenticationServices
                                .authenticatedWithBio();
                      }
                    : null,
                child: const Text(TextString.authentication),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: isAuthenticated ? Colors.green : Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 2,
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    textBiometric,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: isAuthenticated
                    ? () async {
                        Navigator.pushNamed(context, TextString.secondScreen);
                      }
                    : null,
                child: const Text(TextString.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
