
import 'package:aprendiendo/vistas/paginas/counter/counter_screen.dart';
import 'package:aprendiendo/vistas/paginas/practica/practica.dart';
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
      home: const CounterScreen(),
      //home: Practica(),
    );
  }

}
