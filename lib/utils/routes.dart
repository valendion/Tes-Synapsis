import 'package:flutter/material.dart';
import 'package:tes_synpsis/screens/first_screen.dart';
import 'package:tes_synpsis/screens/fourth_screen.dart';
import 'package:tes_synpsis/screens/second_screen.dart';
import 'package:tes_synpsis/screens/third_screen.dart';
import 'package:tes_synpsis/utils/text_string.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  TextString.firstScreen: (context) => const FirstScreen(),
  TextString.secondScreen: (context) => const SecondScreen(),
  TextString.thirdScreen: (context) => const ThirdScreen(),
  TextString.fourthScreen: (context) => const FourthScreen(),
};
