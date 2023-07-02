import 'package:flutter/material.dart';

Widget textDescription(String description, dynamic value) {
  return Text(
    '$description : $value',
    style: const TextStyle(fontSize: 24),
  );
}

Widget textTitle(String description) {
  return Text(
    description,
    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}
