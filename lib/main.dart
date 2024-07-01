
import 'package:aprendiendo/vistas/paginas/counter/counter_function.dart';
import 'package:aprendiendo/vistas/paginas/counter/counter_screen.dart';
import 'package:aprendiendo/vistas/paginas/dados/dados.dart';
import 'package:aprendiendo/vistas/paginas/estructura2/maqueta2.dart';
import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:aprendiendo/vistas/paginas/maqueta/welcome_screen.dart';
import 'package:aprendiendo/vistas/paginas/practica/practica.dart';
import 'package:aprendiendo/vistas/paginas/preguntas/preguntas.dart';
import 'package:aprendiendo/vistas/paginas/xilofono/xilofono.dart';
import 'package:flutter/material.dart';
import 'package:aprendiendo/vistas/paginas/estructura/estructura.dart';

void main(){
  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      //home: Estructura(),
      //home: const CounterFunction(),
      //home: const CounterScreen(),
      //home: Practica(),
      //home:const WelcomeScreen(),
      //home:const Maqueta2(),
      //home:const Xilofono(),
      //home:const Dados(),
      //home: const Preguntas(),
      home:const Inicio(),
      
    );
  }

}
