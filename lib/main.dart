
import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:flutter/material.dart';

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
