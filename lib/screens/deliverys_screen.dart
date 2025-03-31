import 'package:flutter/material.dart';

class DeliverysScreen extends StatelessWidget {
  const DeliverysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deliverys'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Pantalla de Deliverys',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
