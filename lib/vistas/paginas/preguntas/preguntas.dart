import 'dart:math';
import 'package:flutter/material.dart';

class Preguntas extends StatefulWidget {
  const Preguntas({super.key});

  @override
  State<Preguntas> createState() => _PreguntasState();
}

class _PreguntasState extends State<Preguntas> {
  final List<Widget> score = [];
  final List<String> preguntas = [
    '¿El hombre llegó a la luna?',
    '¿La tierra es plana?',
    '¿El agua hierve a 100 grados Celsius?',
    '¿El sol es una estrella?',
    '¿Tu flaca es plana?',
  ];

  final List<bool> respuestas = [true, false, true, true, true];
  int actualPreguntaIndex = 0;
  String resultadoMensaje = '';
  int aciertos = 0;
  int desaciertos = 0;
  bool juegoTerminado = false;
  bool preguntaRespondida = false;
  final Set<int> preguntasRespondidas = {};

  void _preguntaAleatoria() {
    if (preguntasRespondidas.length < preguntas.length) {
      setState(() {
        do {
          actualPreguntaIndex = Random().nextInt(preguntas.length);
        } while (preguntasRespondidas.contains(actualPreguntaIndex));
        preguntasRespondidas.add(actualPreguntaIndex);
        resultadoMensaje = '';
        preguntaRespondida = false;
      });
    } else {
      setState(() {
        juegoTerminado = true;
        resultadoMensaje =
            'Juego terminado! Aciertos: $aciertos, Desaciertos: $desaciertos';
      });
    }
  }

  void _verificarRespuesta(bool respuestaUsuario) {
    if (!juegoTerminado && !preguntaRespondida) {
      setState(() {
        preguntaRespondida = true;
        if (respuestaUsuario == respuestas[actualPreguntaIndex]) {
          resultadoMensaje = '¡Firme!';
          score.add(const Icon(Icons.check_circle_outline, color: Colors.green));
          aciertos++;
        } else {
          resultadoMensaje = '¡Incorrecto!';
          score.add(const Icon(Icons.close, color: Colors.red));
          desaciertos++;
        }
        if (preguntasRespondidas.length == preguntas.length-1) {
          juegoTerminado = true;
          resultadoMensaje =
              'Juego terminado! Aciertos: $aciertos, Desaciertos: $desaciertos';
        }
      });
    }
  }

  void _reiniciarJuego() {
    setState(() {
      score.clear();
      aciertos = 0;
      desaciertos = 0;
      actualPreguntaIndex = 0;
      resultadoMensaje = '';
      juegoTerminado = false;
      preguntasRespondidas.clear();
      preguntaRespondida = false;
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
              juegoTerminado ? resultadoMensaje : preguntas[actualPreguntaIndex],
              
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            if (!juegoTerminado)
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
              autofocus: true,
              onPressed: juegoTerminado ? _reiniciarJuego : _preguntaAleatoria,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(60, 60),
                backgroundColor: const Color(0xFF383A6A),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(juegoTerminado ? 'Volver a Jugar' : 'Siguiente Pregunta'),
            ),
            const SizedBox(height: 20),
            if (!juegoTerminado) ...[
              ElevatedButton(
                onPressed: preguntaRespondida ? null : () => _verificarRespuesta(true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF01E1B7),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 100),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('Verdadero'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: preguntaRespondida ? null : () => _verificarRespuesta(false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF94074),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  minimumSize: const Size(double.infinity, 100),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
                ),
                child: const Text('Falso'),
              ),
            ],
            const SizedBox(height: 20),
            Row(
              children: score,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


