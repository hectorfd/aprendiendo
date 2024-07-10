import 'package:aprendiendo/vistas/paginas/componentes/componentes.dart';
import 'package:aprendiendo/vistas/paginas/counter/counter_function.dart';
import 'package:aprendiendo/vistas/paginas/counter/counter_screen.dart';
import 'package:aprendiendo/vistas/paginas/dados/dados.dart';
import 'package:aprendiendo/vistas/paginas/disenios/desing1.dart';
import 'package:aprendiendo/vistas/paginas/estructura/estructura.dart';
import 'package:aprendiendo/vistas/paginas/estructura2/maqueta2.dart';
import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:aprendiendo/vistas/paginas/maqueta/home_screen.dart';
import 'package:aprendiendo/vistas/paginas/practica/practica.dart';
import 'package:aprendiendo/vistas/paginas/preguntas/preguntas.dart';
import 'package:aprendiendo/vistas/paginas/tareas/tareas_dart.dart';
import 'package:aprendiendo/vistas/paginas/xilofono/xilofono.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  ];

  // Lista de colores
  final List<Color> colores = const [
    Color(0xFFFFCF2F),
    Color(0xFFFFC2F2),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
    Color(0xFF46455F),
    Color(0xFFFCDEE2),
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
  ];

  // Lista de rutas
  final List<Widget> rutas = const[
    Estructura(),
    Practica(),
    CounterScreen(),
    Xilofono(),
    Dados(),
    Preguntas(),
    TareasDart(),
    Design1(),
    Componentes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 10,
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
                      child: const Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Trabajos de Flutter',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      hintText: 'ni lo intentes, aun no funciona xd',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: tareas.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
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
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: colores[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: iconos[index],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            tareas[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF39434C),
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