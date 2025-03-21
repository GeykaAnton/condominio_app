import 'package:flutter/material.dart';
import 'navigation/bottom_tab_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Condominio App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomTabNavigator(),
    );
  }
}
