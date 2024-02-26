import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.purple,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.2),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
            titleLarge: TextStyle(fontSize: 45, color: _lightColor._textColor),
          ),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
        side: BorderSide(color: Colors.green),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.redAccent;
}
