import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple[100]),
      bodyLarge: TextStyle(color: Colors.grey[300]),
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.deepPurple),
  );
}
