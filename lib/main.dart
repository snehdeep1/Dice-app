import 'package:first_aap/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 76, 34, 149), const Color.fromARGB(255, 76, 34, 149)),
      ),
    ),
  );
}
