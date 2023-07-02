import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/provider/device_info_provider.dart';
import 'package:tes_synpsis/utils/text_string.dart';
import 'package:tes_synpsis/widget/text_info.dart';

class ThirdScreen extends ConsumerWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceInfoAndroid = ref.watch(deviceInfoAndroidProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextString.halamanKetiga),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textTitle(TextString.deviceInfoSOC),
            textDescription(TextString.deviceInfoManufacturer,
                deviceInfoAndroid.asData?.value['manufacturer']),
            textDescription(TextString.deviceInfoModel,
                deviceInfoAndroid.asData?.value['model']),
            textDescription(TextString.deviceInfoBuild,
                deviceInfoAndroid.asData?.value['device']),
            textDescription(TextString.deviceInfoSdk,
                deviceInfoAndroid.asData?.value['version.sdkInt']),
            textDescription(TextString.deviceInfoVersionCode,
                deviceInfoAndroid.asData?.value['version.codename']),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(context, TextString.fourthScreen),
              },
              child: const Text(TextString.halamanKeempat),
            ),
          ],
        ),
      ),
    );
  }
}
