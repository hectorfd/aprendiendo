import 'package:aprendiendo/vistas/paginas/app10/pages/home_page.dart';
import 'package:aprendiendo/vistas/paginas/app8/app8.dart';
import 'package:aprendiendo/vistas/paginas/app9/shared.dart';
import 'package:aprendiendo/vistas/paginas/componentes/componentes.dart';
import 'package:aprendiendo/vistas/paginas/counter/counter_screen.dart';
import 'package:aprendiendo/vistas/paginas/dados/dados.dart';
import 'package:aprendiendo/vistas/paginas/disenios/desing1.dart';
import 'package:aprendiendo/vistas/paginas/estructura/estructura.dart';
import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:aprendiendo/vistas/paginas/imc/imc.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/pages/home_page.dart';
import 'package:aprendiendo/vistas/paginas/practica/practica.dart';
import 'package:aprendiendo/vistas/paginas/preguntas/preguntas.dart';
import 'package:aprendiendo/vistas/paginas/tareas/tareas_dart.dart';
import 'package:aprendiendo/vistas/paginas/xilofono/xilofono.dart';
import 'package:aprendiendo/vistas/paginas/youtube/home/home3.dart';
import 'package:flutter/material.dart';

class VistaHome extends StatelessWidget {
  VistaHome({super.key});

  // Lista de Tareas
  final List<String> tareas = [
    'Reto 1',
    'Diseño Clase',
    'Contador',
    'Chillofono',
    'Dados',
    'Preguntas',
    'TODO/Dart',
    'Vistas',
    'Componentes',
    'IMC App',
    'App_8',
    'App_9',
    'App_10',
    'Pokedex',
    'Youtube'
  ];

  // Lista de colores
  final List<Color> colores = const [
    Color(0xFFFFCF2F),
    Color(0xFFFFC2F2),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFFF20505),
    Color(0xFF46455F),
    Color(0xFFFCDEE2),
    Color(0xFF356952),
    Color(0xFF3F4585),
    Color(0xFF3F4585),
    Color(0xFF322222),
    Color(0xFF73CA00),
    Color(0xFFCF1400),
  ];

  // Lista de iconos
  final List<Icon> iconos = const [
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.plus_one, color: Colors.white, size: 30),
    Icon(Icons.superscript, color: Colors.white, size: 30),
    Icon(Icons.square, color: Colors.white, size: 30),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
    Icon(Icons.app_registration_rounded, color: Colors.white, size: 30),
    Icon(Icons.list, color: Colors.white, size: 30),
    Icon(Icons.sports_gymnastics , color: Colors.white, size: 30),
    Icon(Icons.verified_user , color: Colors.white, size: 30),
    Icon(Icons.share_rounded , color: Colors.white, size: 30),
    Icon(Icons.today , color: Colors.white, size: 30),
    Icon(Icons.abc , color: Colors.white, size: 30),
    Icon(Icons.play_arrow , color: Colors.white, size: 30),
  ];

  // Lista de rutas
  final List<Widget> rutas = [
    const Estructura(),
    const Practica(),
    const CounterScreen(),
    const Xilofono(),
    const Dados(),
    const Preguntas(),
    const TareasDart(),
    const Design1(),
    const Componentes(),
    const Imc(),
    App8(),
    const Shared(),
    const HomePage(),
    HomePage2(),
    Home3(),
  ];

  @override
  Widget build(BuildContext context) {
    // Obtener el ancho y alto de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final Size screenSize = MediaQuery.of(context).size;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              left: screenWidth * 0.04,
              right: screenWidth * 0.04,
              bottom: screenHeight * 0.01,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF00BDFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Inicio()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: iconSize * 1.7,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: iconSize * 1.7,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.01, bottom: screenHeight * 0.02),
                  child: Text(
                    'Trabajos de Flutter',
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.01, bottom: screenHeight * 0.03),
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      hintText: 'ni lo intentes, aun no funciona xd',
                      hintStyle: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.02, left: screenWidth * 0.04, right: screenWidth * 0.04),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: tareas.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    mainAxisSpacing: screenHeight * 0.02,
                    crossAxisSpacing: screenWidth * 0.04,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => rutas[index]),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: screenHeight * 0.08,
                            width: screenHeight * 0.08,
                            decoration: BoxDecoration(
                              color: colores[index],
                              shape: BoxShape.circle,
                            ),
                            child: SizedBox(
                              
                              child: Center(
                                
                                child: iconos[index],
                                
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            tareas[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF39434C),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



