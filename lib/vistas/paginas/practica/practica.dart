import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Practica extends StatelessWidget{
  
  
  const Practica({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 223, 225, 172),
        body: SafeArea(
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.yellow,
          //       child: Text("Hola 1"),
          //       height: 100.0,
          //       width: 100.0,
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(30.0),
          //       alignment: Alignment.topRight,
          //     ),
          //     Container(
          //       color: Colors.blue,
          //       child: Text("Hola 1"),
          //       height: 100.0,
          //       width: 400.0,
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(30.0),
          //       alignment: Alignment.topRight,
          //     ),
          //     Container(
          //       color: Colors.redAccent,
          //       child: Text("Hola 3"),
          //       height: 100.0,
          //       width: 100.0,
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(30.0),
          //       alignment: Alignment.topRight,
          //     ),
          //     Text("Otro elemento"),
          //   ],
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   //crossAxisAlignment: CrossAxisAlignment.end,
          //   //crossAxisAlignment: CrossAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            // children: [
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.amber,
            //     ),
            //     Container(
            //       height: 200,
            //       width: 100,
            //       color: Colors.blue,
            //     ),
            //     Container(
            //       height: 100,
            //       width: 400,
            //       color: Colors.red,
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.orange,
            //     ),
            // ],
            // children: [
              
            //   Icon(
            //     Icons.call,
            //     size: 100,
            //     color: Colors.blue,
                
            //     ),
            //     Icon(
            //     Icons.place,
            //     size: 100,
            //     color: Colors.red,
            //     ),
            //     Icon(
            //     Icons.share,
            //     size: 100,
            //     color: Colors.cyan,
            //     ),
            // ],
            children: [
                // Container(
                //   width: 500,
                //   height: 829,
                //   child: Image.network(
                //               'https://images.pexels.com/photos/18281552/pexels-photo-18281552/free-photo-of-mar-playa-arena-relajacion.jpeg',
                              
                //               fit: BoxFit.cover,
                //             ),
                // ),
                TextButton(onPressed: (){}, child: const Text('joer')),
                ElevatedButton(onPressed: (){
                  print('esta vaina funca');
                },
                 child: const Text('Hola'),
                 
                 ),
                 ElevatedButton(onPressed: (){
                  print('cancelar go');
                 },
                 child: const Text('Cancelar'),
                 
                 ),
            ],
          ),
        ),
      ),
    );
  }

}