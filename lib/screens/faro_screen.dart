import 'package:flutter/material.dart';

class FaroScreen extends StatelessWidget {
  const FaroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faro'),
        backgroundColor: const Color(0xFF0032fe),
      ),
      body: const Center(child: Text('Pantalla de Faro')),
    );
  }
}
