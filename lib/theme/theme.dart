import 'package:flutter/material.dart';

class FlutterRegulationTheme {
  static ThemeData get light {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            color: Color(0xFFFDFDFD), foregroundColor: Color(0xFF747E8B)),
        scaffoldBackgroundColor: Colors.white);
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFDFDFD),
      ),
    );
  }
}
