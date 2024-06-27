import 'package:flutter/material.dart';
import 'dart:math';

class Dados extends StatefulWidget{
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  
  int leftDadoNumber = 1;
  int rightDadoNumber = 1;

  void rollDado(){
    setState(() {
      leftDadoNumber = Random().nextInt(6) + 1;
      rightDadoNumber = Random().nextInt(6) + 1;
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Juego de Dados',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',

            ),
            ),
        centerTitle: true,
        backgroundColor: Colors.black,
        ),
        

      backgroundColor: Colors.purple,

      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              const SizedBox(height: 20,),
              AnimatedSwitcher(
                duration:const Duration(milliseconds: 500),
                child: Image.asset('assets/images/dice$leftDadoNumber.png',height: 200,),
                ),
               
              AnimatedSwitcher(
                duration:const Duration(milliseconds: 500),
                child: Image.asset('assets/images/dice$rightDadoNumber.png',height: 200,),
                ),
                const SizedBox(height: 20,),
                ],
                ),
                
                const SizedBox(height: 20,),
                
                ElevatedButton(
                  onPressed: rollDado,
                  style: ElevatedButton.styleFrom(
                    
                    textStyle:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                  child:const Text('Tirar'),
                  ),
                  ],
       ),
      ),
    );
  }
}