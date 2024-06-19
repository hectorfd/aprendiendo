
import 'package:aprendiendo/vistas/paginas/counter/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:aprendiendo/vistas/paginas/estructura/estructura.dart';

void main(){
  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Estructura(),
      //home: CounterScreen(),
    );
  }

}
