import 'package:flutter/material.dart';

class EmergenciasScreen extends StatelessWidget {
  const EmergenciasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergencias'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Pantalla de Emergencias',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
