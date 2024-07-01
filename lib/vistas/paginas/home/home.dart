import 'package:aprendiendo/vistas/paginas/home/vista-home.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.8,
              decoration: const BoxDecoration(
                color: Color(0xFF00BDFF),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(90))
              ),
              child: Center(
                child: Image.asset('assets/images/logo-UTEA.png',height: 300,),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.25,
                decoration:const BoxDecoration(
                  color: Color(0xFF00BDFF),
                ),
              ),  
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.25,
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
                        color: Color(0xFF00BDFF),
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                      ),
                      const SizedBox(height: 20,),
                      Column(
                        children:[
                          Image.asset('assets/images/Flutter.png',height: 60,),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Aprende a programar o muere en el intento',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFF6E717E),
                            
                          ),
                          textAlign: TextAlign.center,
                          ),
                        ),
                      const SizedBox(height: 40),
                      Material(
                        color:const  Color(0xFF00BDFF),
                        //borderRadius:const BorderRadius.all(Radius.circular(20)),
                        borderRadius:const BorderRadius. only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          ),
                        
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> VistaHome()
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