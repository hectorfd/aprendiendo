import 'package:aprendiendo/vistas/paginas/home/vista-home.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener dimensiones de pantalla
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              height: screenHeight / 1.8,
              decoration: const BoxDecoration(
                color: Color(0xFF00BDFF),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo-UTEA.png',
                  height: screenHeight * 0.3,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: screenWidth,
                height: screenHeight / 2.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF00BDFF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: screenWidth,
                height: screenHeight / 2.25,
                padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.03),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    Text(
                      'Siempre se aprende',
                      style: TextStyle(
                        fontSize: screenWidth * 0.065,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00BDFF),
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Column(
                      children: [
                        Image.asset('assets/images/Flutter.png', height: screenHeight * 0.075),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.125),
                      child: Text(
                        'Aprende a programar o muere en el intento',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: screenWidth * 0.035,
                          color: Color(0xFF6E717E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    Material(
                      color: const Color(0xFF00BDFF),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VistaHome()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.2,
                          ),
                          child: Text(
                            'Iniciar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

