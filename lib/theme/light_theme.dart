import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color.fromRGBO(1, 0, 53, 1),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      scaffoldBackgroundColor: Color.fromRGBO(248, 248, 248, 1),
      fontFamily: 'Mark Pro',
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromRGBO(255, 110, 78, 1),
      ),
      textTheme: const TextTheme(

      )
    );
  }
}