import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:aprendiendo/vistas/paginas/home/vista-home.dart';
import 'package:flutter/material.dart';

class TareasDart extends StatelessWidget{
  const TareasDart({super.key});

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
                          MaterialPageRoute(builder: (context) => VistaHome()),
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
                    'Trabajos Dart',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
  
}

