import 'package:flutter/material.dart';

class VisitantesScreen extends StatelessWidget {
  const VisitantesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visitantes'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Pantalla de Visitantes',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
