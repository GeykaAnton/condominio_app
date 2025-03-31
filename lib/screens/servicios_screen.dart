import 'package:flutter/material.dart';

class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios'),
        backgroundColor: const Color.fromARGB(
          255,
          200,
          38,
          189,
        ), // Color consistente con el diseño
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('Limpieza'),
              subtitle: const Text(
                'Servicio de limpieza disponible los lunes y jueves.',
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Seguridad'),
              subtitle: const Text('Guardias de seguridad 24/7.'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Mantenimiento'),
              subtitle: const Text(
                'Reporte cualquier problema de mantenimiento.',
              ),
            ),
          ),
          // Agrega más servicios según necesites
        ],
      ),
    );
  }
}
