import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/provider/sensor_plus_provicer.dart';
import 'package:tes_synpsis/utils/text_string.dart';

class FourthScreen extends ConsumerWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var sensor = ref.watch(sensorProvider);
    var dx = ref.watch(dxProvider);
    var dy = ref.watch(dyProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextString.halamanKeempat),
      ),
      body: Center(
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(dx.asData?.value ?? 180, dy.asData?.value ?? 350),
              child: const CircleAvatar(
                radius: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
