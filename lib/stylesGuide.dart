import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle display1 = TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: 'workSans',
      color: Colors.black,
      fontSize: 38,
      letterSpacing: 1.2);

  static const TextStyle display2 = TextStyle(
      fontWeight: FontWeight.normal,
      fontFamily: 'workSans',
      color: Colors.black,
      fontSize: 32,
      letterSpacing: 1.1);

  static const TextStyle heading = TextStyle(
      fontWeight: FontWeight.w900,
      fontFamily: 'workSans',
      fontSize: 34,
      color: Colors.white,
      letterSpacing: 1.2);
  static const TextStyle subheading = TextStyle(
    inherit: true,
    fontWeight: FontWeight.w500,
    fontFamily: 'workSans',
    fontSize: 24,
    color: Colors.white,
  );
}
