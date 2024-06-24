import 'package:flutter/material.dart';

class CounterFunction extends StatefulWidget{
  
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunctionState();
}



class _CounterFunctionState extends State<CounterFunction> {
  int counter = 0;
  String texto = 'Clicks';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Contador función'),
        //a la izquierda leading
        // leading: IconButton(
        //   icon:const Icon(Icons.refresh_rounded),
        //   onPressed: () {

        //     },),
        //a la derecha actions
        actions: [
          IconButton(
           icon: const Icon(Icons.refresh_rounded),
           onPressed: () {
            setState(() {
              counter = 0;
              });

             },
           ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style:const TextStyle(
                fontSize: 140,
                fontWeight: FontWeight.bold,
                ),
              ),
             Text(
              '$texto',
              style:const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
      // floatingActionButton:FloatingActionButton(
      //   onPressed: (){
      //     // incrementar
          
      //     setState(() {
      //       counter++;
      //       counter == 1 ? texto = 'Click': texto = 'Clicks';
      //     });


      //   },
      // child: Icon(Icons.plus_one),
      // ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              // incrementar
              setState(() {
                counter = 0;
                
                });
                },
                child:const Icon(Icons.refresh_rounded),
                ),
                const SizedBox(height: 10,),
                FloatingActionButton(
            onPressed: (){
              // incrementar
              setState(() {
                counter++;
                counter == 1 ||counter == -1 ? texto = 'Click': texto = 'Clicks';
                });
                },
                child:const Icon(Icons.plus_one),
                ),
                const SizedBox(height: 10,),
                FloatingActionButton(
            onPressed: (){
              // incrementar
              setState(() {
                counter--;
                counter == 1 ||counter == -1 ? texto = 'Click': texto = 'Clicks';
                });
                },
                child:const Icon(Icons.exposure_minus_1_outlined),
                ),
        ],

      ),
    );
  }
}
