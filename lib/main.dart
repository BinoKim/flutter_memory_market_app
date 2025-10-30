import 'package:flutter/material.dart';
import 'package:flutter_memory_market_app/itemListPage.dart';
import 'package:flutter_memory_market_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Itemlistpage(),
      
    );
  }
}

