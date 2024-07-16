import 'package:aprendiendo/vistas/paginas/disenios/Design9.dart';
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
    // Obtener el ancho y alto de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
      {
        'icon': Icons.newspaper,
        'title': 'practica1',
        'subtitle': 'Autor: Hector',
        'route': Design9(),
      },
      
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF025159),
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
        padding: EdgeInsets.all(screenWidth * 0.05),
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          final item = listItems[index];
          return Container(
            margin: EdgeInsets.only(bottom: screenWidth * 0.025),
            padding: EdgeInsets.all(screenWidth * 0.05),
            decoration: BoxDecoration(
              color: const Color(0xFFD5E5F2),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(screenWidth * 0.05),
                topLeft: Radius.circular(screenWidth * 0.05),
              ),
            ),
            child: ListTile(
              leading: Icon(
                item['icon'],
                size: screenWidth * 0.1, 
              ),
              title: Text(
                item['title'],
                style: TextStyle(
                  color: const Color(0xFFF05330),
                  fontSize: screenWidth * 0.06, 
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                item['subtitle'],
                style: TextStyle(fontSize: screenWidth * 0.04), 
              ),
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
