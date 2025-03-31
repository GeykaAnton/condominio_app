import 'package:flutter/material.dart';

class InmobiliariaScreen extends StatelessWidget {
  const InmobiliariaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inmobiliaria'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Pantalla de Inmobiliaria',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
