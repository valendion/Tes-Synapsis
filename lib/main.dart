import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/utils/routes.dart';
import 'package:tes_synpsis/utils/text_string.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Synapsis Test',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: TextString.firstScreen,
    );
  }
}
