import 'package:aprendiendo/vistas/paginas/maqueta/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration:const BoxDecoration(
                color:  Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration:const BoxDecoration(
                color:  Color(0xFF6655F3),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              ),
              child: Center(
                child:Image.asset('images/books.png', scale: 0.8,height: 300,),
                
                ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration:const BoxDecoration(
                  color: Color(0xFF6655F3),
                ),
              ),  
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding:const EdgeInsets.only(top:40, bottom: 30),
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius. only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Siempre se aprende',
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6655F3),
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                      ),
                      const SizedBox(height: 15,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Aprende a programar o muere en el intento',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF171520),
                          ),
                          ),
                        ),
                      const SizedBox(height: 60),
                      Material(
                        color:const  Color(0xFF6655F3),
                        borderRadius:const BorderRadius.all(Radius.circular(20)),
                        //borderRadius: BorderRadius. only(topLeft: Radius.circular(20)),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> HomeScreen()
                              ));
                          },
                          child: Container(
                            padding:const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80,
                              ),
                            child:const Text(
                              'Iniciar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
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