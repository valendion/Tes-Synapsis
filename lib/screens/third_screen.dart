import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/utils/text_string.dart';

class ThirdScreen extends ConsumerWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextString.halamanKetiga),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text(TextString.halamanKedua)),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, TextString.fourthScreen)},
              child: const Text(TextString.halamanKeempat)),
        ],
      ),
    );
  }
}
