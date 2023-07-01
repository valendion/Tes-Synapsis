import 'package:flutter/material.dart';

Widget textBattery(String description, dynamic value) {
  return Text(
    '$description : $value',
    style: const TextStyle(fontSize: 24),
  );
}
