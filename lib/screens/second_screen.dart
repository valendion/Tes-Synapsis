import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/provider/battery_info_provider.dart';
import 'package:tes_synpsis/utils/text_string.dart';
import '../widget/text_info.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var batteryHealth = ref.watch(batteryHealthProvider);
    var batteryLevel = ref.watch(batteryLevelProvider);
    var batteryPluggedStatus = ref.watch(batteryPluggedStatusProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextString.halamanKedua),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textDescription(
                TextString.batteryHealth, batteryHealth.asData?.value),
            textDescription(
                TextString.batteryLevel, batteryLevel.asData?.value),
            textDescription(TextString.batteryPluggedStatus,
                batteryPluggedStatus.asData?.value),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(context, TextString.thirdScreen),
                    },
                child: const Text(TextString.halamanKetiga)),
          ],
        ),
      ),
    );
  }
}
