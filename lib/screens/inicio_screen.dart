import 'package:condominio_app/widgets/news_card.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puerto Encantado'),
        backgroundColor: const Color(
          0xFF0032fe,
        ), // Color del header (mismo que en React Native)
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Puerto Encantado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Bienvenido al condominio',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Agrega el GIF
            Image.asset(
              'assets/img/condominio.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            const NewsCard(
              title: 'Nueva actualización',
              content: 'Reunión de residentes el 5 de marzo',
            ),
            const NewsCard(
              title: 'Alerta',
              content: 'Mantenimiento programado para el 28 de febrero',
            ),
          ],
        ),
      ),
    );
  }
}
