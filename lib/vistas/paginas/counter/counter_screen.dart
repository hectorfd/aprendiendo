import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}



class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  String texto = 'Clicks';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Contador'),
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
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          // incrementar
          
          setState(() {
            counter++;
            counter == 1 ? texto = 'Click': texto = 'Clicks';
          });


        },
      child: Icon(Icons.plus_one),
      ),
    );
  }
}


