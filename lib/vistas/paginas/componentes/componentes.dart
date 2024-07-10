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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.network(
                  'https://th.bing.com/th/id/R.e609a33040c1af8f54de7a0609d5ec1a?rik=rVsuH4Ow98d%2bYA&riu=http%3a%2f%2forig06.deviantart.net%2f09fe%2ff%2f2014%2f184%2f7%2f3%2fjigglypuff_anime_artwork__fanmade__by_aquamimi123-d7p22ci.png&ehk=8fyNphLMBENl%2bwZcvLhf2jCGPTO%2fDrCE%2bVVMcXQlBSo%3d&risl=&pid=ImgRaw&r=0',
                  height: 200,
                ),
              ),
              Text(
                'Flutter Components',
                style: GoogleFonts.italiana(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ..._buildButtonList(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildButtonList(BuildContext context) {
    // Datos de los botones y las vistas
    final List<Map<String, dynamic>> buttons = [
      {'title': 'Avatar', 'subtitle': 'Ir al detalle de Avatar', 'view': const Avatar()},
      {'title': 'Alert', 'subtitle': 'Ir al detalle de Alert', 'view': const Alert()},
      {'title': 'Cards', 'subtitle': 'Ir al detalle de Cards', 'view': const Cards()},
      {'title': 'Inputs', 'subtitle': 'Ir al detalle de Inputs', 'view': const Input()},
      {'title': 'Lists', 'subtitle': 'Ir al detalle de Lists', 'view': const Listas()},
    ];

    
    return buttons.map((button) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(button['title']!),
            subtitle: Text(button['subtitle']!),
            trailing: const Icon(Icons.chevron_right),
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



