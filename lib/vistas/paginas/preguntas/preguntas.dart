import 'dart:math';

import 'package:flutter/material.dart';

class Preguntas extends StatefulWidget {
  const Preguntas({super.key});

  @override
  State<Preguntas> createState() => _PreguntasState();
}

class _PreguntasState extends State<Preguntas> {
  final List<String> preguntas = [
    '¿El hombre llegó a la luna?',
    '¿La tierra es plana?',
    '¿El agua hierve a 100 grados Celsius?',
    '¿El sol es una estrella?',
    'Tu flaca es plana?',
  ];

  final List<bool> respuestas = [true, false, true, true, true];
  int actualPreguntaIndex = 0;
  String resultadoMensaje = '';

  void _preguntaAleatoria() {
    setState(() {
      actualPreguntaIndex = Random().nextInt(preguntas.length);
      resultadoMensaje = '';
    });
  }

  void _verificarRespuesta(bool respuestaUsuario) {
    setState(() {
      if (respuestaUsuario == respuestas[actualPreguntaIndex]) {
        resultadoMensaje = '¡Firme!';
      } else {
        resultadoMensaje = '¡Incorrecto!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'App de preguntas',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            
          ),
          
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              preguntas[actualPreguntaIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              resultadoMensaje,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 180),
            ElevatedButton(
              autofocus:true,
              onPressed: _preguntaAleatoria,
              style: ElevatedButton.styleFrom(
                fixedSize:const Size(60, 60),
                backgroundColor:const Color(0xFF383A6A),
                foregroundColor: Colors.white,
                minimumSize:const Size(double.infinity, 50),
                textStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                
              ),
              child: const Text('Siguiente Pregunta'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _verificarRespuesta(true),
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFF01E1B7),
                foregroundColor: Colors.white,
                minimumSize:const Size(double.infinity, 100) ,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Verdadero'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _verificarRespuesta(false),
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF94074),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                minimumSize:const Size(double.infinity, 100),
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Hace el botón cuadrado
                ),
              ),
              child: const Text('Falso'),
            ),
            // const SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
