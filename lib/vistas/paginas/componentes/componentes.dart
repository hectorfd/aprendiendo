import 'package:aprendiendo/vistas/paginas/componentes/alert.dart';
import 'package:aprendiendo/vistas/paginas/componentes/avatar.dart';
import 'package:aprendiendo/vistas/paginas/componentes/cards.dart';
import 'package:aprendiendo/vistas/paginas/componentes/input.dart';
import 'package:aprendiendo/vistas/paginas/componentes/listas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componentes extends StatelessWidget {
  const Componentes({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener el tamaño de la pantalla
    final Size screenSize = MediaQuery.of(context).size;
    // Calcular un factor de escala para ajustar el tamaño de fuente
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Image.network(
                  'https://th.bing.com/th/id/R.e609a33040c1af8f54de7a0609d5ec1a?rik=rVsuH4Ow98d%2bYA&riu=http%3a%2f%2forig06.deviantart.net%2f09fe%2ff%2f2014%2f184%2f7%2f3%2fjigglypuff_anime_artwork__fanmade__by_aquamimi123-d7p22ci.png&ehk=8fyNphLMBENl%2bwZcvLhf2jCGPTO%2fDrCE%2bVVMcXQlBSo%3d&risl=&pid=ImgRaw&r=0',
                  height: screenHeight * 0.22,
                ),
              ),
              Text(
                'Flutter Components',
                style: GoogleFonts.italiana(
                  textStyle: TextStyle(
                    fontSize: scaleFactor * 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ..._buildButtonList(context, scaleFactor, iconSize),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildButtonList(BuildContext context, double scaleFactor, double iconSize) {
    final List<Map<String, dynamic>> buttons = [
      {'title': 'Avatar', 'subtitle': 'Ir al detalle de Avatar', 'view': const Avatar()},
      {'title': 'Alert', 'subtitle': 'Ir al detalle de Alert', 'view': const Alert()},
      {'title': 'Cards', 'subtitle': 'Ir al detalle de Cards', 'view': const Cards()},
      {'title': 'Inputs', 'subtitle': 'Ir al detalle de Inputs', 'view': const Input()},
      {'title': 'Lists', 'subtitle': 'Ir al detalle de Lists', 'view': const Listas()},
    ];

    return buttons.map((button) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: Icon(Icons.check_circle_outline, size: iconSize),
            title: Text(
              button['title']!,
              style: TextStyle(
                fontSize: scaleFactor * 26,
              ),
            ),
            subtitle: Text(
              button['subtitle']!,
              style: TextStyle(
                fontSize: scaleFactor * 18,
              ),
            ),
            trailing: Icon(Icons.chevron_right, size: iconSize),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => button['view']),
              );
            },
          ),
        ),
      );
    }).toList();
  }
}



