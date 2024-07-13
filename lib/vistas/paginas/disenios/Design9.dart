import 'package:flutter/material.dart';

class Design9 extends StatelessWidget{
  const Design9({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    Size size = _mediaQuery.size;

    return  Scaffold(
      appBar: AppBar(
        title:const Text('Design 9'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: _mediaQuery.size.width * 0.5,
            height: _mediaQuery.size.height * 0.5,
            decoration:const BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            width: _mediaQuery.size.width * 0.5,
            decoration:const BoxDecoration(
              color: Colors.blue,
              ),

          ),
        ],
      ),
    );
  }

}