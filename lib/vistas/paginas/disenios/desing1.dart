import 'package:aprendiendo/vistas/paginas/disenios/design2.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design3.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design4.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design5.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design6.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design7.dart';
import 'package:aprendiendo/vistas/paginas/disenios/design8.dart';
import 'package:flutter/material.dart';

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para los ListTile
    final List<Map<String, dynamic>> listItems = [
      {
        'icon': Icons.sports_soccer_rounded,
        'title': 'Manchester City',
        'subtitle': 'Autor: Hector',
        'route': const Design2(),
      },
      {
        'icon': Icons.image,
        'title': 'Machupicchu',
        'subtitle': 'Autor: Hector',
        'route': const Design3(),
      },
      {
        'icon': Icons.sports,
        'title': 'Ejercicio por la Mañana',
        'subtitle': 'Autor: Hector',
        'route': const Design4(),
      },
       {
        'icon': Icons.coffee,
        'title': 'Cafe gratis',
        'subtitle': 'Autor: Hector',
        'route': const Design5(),
      },
      {
        'icon': Icons.face,
        'title': 'Meta de Facebook',
        'subtitle': 'Autor: Hector',
        'route': const Design6(),
      },
       {
        'icon': Icons.mode_fan_off,
        'title': 'Moda',
        'subtitle': 'Autor: Hector',
        'route': const Design7(),
      },
       {
        'icon': Icons.newspaper,
        'title': 'Noticias',
        'subtitle': 'Autor: Hector',
        'route': const Design8(),
      },
      // Añade más elementos aquí
    ];

    return Scaffold(
      backgroundColor: Color(0xFF025159),
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color(0xFFF05330),
        title: const Text(
          'Lista de Diseños',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      
      // Lista de links e iconos
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          final item = listItems[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFD5E5F2),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: ListTile(
              leading: Icon(
                item['icon'],
                size: 40,
              ),
              title: Text(
                item['title'],
                style: const TextStyle(
                  color: Color(0xFFF05330),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(item['subtitle']),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item['route']),
              ),
            ),
          );
        },
      ),
    );
  }
}
