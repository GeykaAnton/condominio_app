import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';
import '../screens/faro_screen.dart';
import '../screens/inicio_screen.dart';
import '../screens/servicios_screen.dart';

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({super.key});

  @override
  State<BottomTabNavigator> createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    InicioScreen(),
    FaroScreen(),
    ServiciosScreen(),
    ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/inicio.png',
              width: 24, // Tamaño más pequeño
              height: 24,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/faro.png', width: 24, height: 24),
            label: 'Faro',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/servicios.png',
              width: 24,
              height: 24,
            ),
            label: 'Servicios',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/chat.png', width: 24, height: 24),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF0032fe),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
