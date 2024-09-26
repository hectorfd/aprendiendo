import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) => {
            
            setState(() {
            _currentIndex = value;  
            })   
        },
        items: [
          BottomNavigationBarItem(label: 'Principal', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Shorts',icon: Icon(Icons.play_arrow)),
          BottomNavigationBarItem(label: '',icon: Container(
            margin: EdgeInsets.only(top: 5),
            child: Icon(Icons.add_circle_outline_rounded))),
          BottomNavigationBarItem(label: 'Suscripciones',icon: Icon(Icons.subscript_rounded)),
          BottomNavigationBarItem(label: 'Biblioteca',icon: Icon(Icons.video_collection_rounded)),
        ],
        ),
        );
  }
}