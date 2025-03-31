import 'package:flutter/material.dart';
import 'package:condominio_app/screens/pagos_screen.dart';
import 'package:condominio_app/screens/inmuebles_screen.dart';
import 'package:condominio_app/screens/visitantes_screen.dart';
import 'package:condominio_app/screens/emergencias_screen.dart';
import 'package:condominio_app/screens/inmobiliaria_screen.dart';
import 'package:condominio_app/screens/deliverys_screen.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  // Función para mostrar el modal de pagos vencidos
  void _showPagosVencidosModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pagos Vencidos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Servicio de agua - \$50.00 - Vence: 01/04/2025'),
              const Text('Servicio de luz - \$75.00 - Vence: 02/04/2025'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Cierra el modal
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagosScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  foregroundColor: Colors.white,
                ),
                child: const Text('Pagar'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado con nombre y edificio
          Container(
            padding: const EdgeInsets.all(24.0),
            color: Colors.blue[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24.0,
                    ), // Espacio adicional en la parte superior
                    const Text(
                      'JORGE ENRIQUE GARCÍA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'EDIF. PORTO NOVO VILLA 38',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/img/skull_protector.png', // Asegúrate de tener este logo
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          // Logo de Puerto Encantado
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Image.asset(
                'assets/img/condominio.png', // Asegúrate de tener este logo
                width: 150,
                height: 150,
              ),
            ),
          ),
          // Sección de Pagos Vencidos
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pagos Vencidos',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => _showPagosVencidosModal(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Pagar'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Sección de Consulta de Inmuebles
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Consulta tus INMUEBLES',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InmueblesScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Consultar'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Sección de Noticias (Placeholder)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'NOTICIAS',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Sección de Ítems Rápidos
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickAccessItem(
                  context,
                  'Visitantes',
                  const Icon(Icons.group, color: Colors.white),
                  const VisitantesScreen(),
                ),
                _buildQuickAccessItem(
                  context,
                  'Emergencias',
                  const Icon(Icons.warning, color: Colors.white),
                  const EmergenciasScreen(),
                ),
                _buildQuickAccessItem(
                  context,
                  'Inmobiliaria',
                  const Icon(Icons.home, color: Colors.white),
                  const InmobiliariaScreen(),
                ),
                _buildQuickAccessItem(
                  context,
                  'Deliverys',
                  const Icon(Icons.delivery_dining, color: Colors.white),
                  const DeliverysScreen(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  // Widget auxiliar para los ítems de acceso rápido
  Widget _buildQuickAccessItem(
    BuildContext context,
    String title,
    Icon icon,
    Widget screen,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
