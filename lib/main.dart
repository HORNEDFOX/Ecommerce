import 'package:flutter/material.dart';
import 'package:testecommerce/pages/home.dart';
import 'package:testecommerce/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme.lightTheme,
      home: const Home(),
    );
  }
}