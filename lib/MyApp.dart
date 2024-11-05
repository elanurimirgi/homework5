import 'package:flutter/material.dart';
import 'LightTheme.dart';
import 'DarkTheme.dart';
import 'MyHomePage.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Varsayılan tema açık tema
  bool _isDarkTheme = false;

  // Tema değişimini sağlayan fonksiyon
  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? darkTheme : lightTheme,
      home: MyHomePage(
        isDarkTheme: _isDarkTheme,
        toggleTheme: _toggleTheme,
      ),
    );
  }
}
