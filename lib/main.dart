import 'package:flutter/material.dart';
import 'package:condominio_app/navigation/bottom_tab_navigator.dart'; // Asegúrate de que la ruta sea correcta

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
      home:
          const BottomTabNavigator(), // Usa BottomTabNavigator como pantalla inicial
    );
  }
}
