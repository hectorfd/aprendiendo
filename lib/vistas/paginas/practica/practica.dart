
import 'package:flutter/material.dart';

class Practica extends StatelessWidget{
  
  const Practica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: const Text('Top News'),
           leading: IconButton(
             icon: const Icon(Icons.arrow_back_ios_new_rounded),
             onPressed: () {
             
             },
           ),
           actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
               
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {

              },
            ),
          ],
          flexibleSpace: Container(
            decoration:const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, 
                  width: 2.0, 
                ),
              ),
            ),
          ),
        ),
       body: ListView(
        children: [
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'LISTS',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
          ),
           const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Consectetur eu nisi velit quis tempor mollit consectetur occaecat exercitation esse consequat Lorem Ipsum.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
          padding:const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: RichText(
            text:const TextSpan(
              children: [
                TextSpan(
                  text: 'by ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'Hector Ferro Davalos',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: ' Forbes List',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: RichText(
            text:const TextSpan(
              children: [
                TextSpan(
                  text: 'Hola ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'Nuevo ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'Mundo',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ),
         Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Image.asset(
                  'assets/images/picture3.jpeg',
                  width: 300,
                  height:250,
                  //agregar cover
                  fit: BoxFit.cover,
                ),
          ),
                 const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Consectetur eu nisi velit quis tempor mollit consectetur occaecat exercitation esse consequat Lorem Ipsum.',
              style: TextStyle(
                color: Color(0xFF626068),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Ullamco elit mollit fugiat pariatur dolore esse magna et consequat.Dolor excepteur aute proident deserunt cupidatat.Dolor Lorem consequat aute duis laborum nostrud sunt sunt consectetur quis ea commodo mollit.Eiusmod qui proident ullamco duis cupidatat occaecat enim nisi magna culpa magna. Et eu consectetur excepteur ipsum commodo velit pariatur nulla fugiat laboris eiusmod laboris amet. Incididunt amet commodo et veniam dolore cupidatat mollit.',
              style: TextStyle(
                color: Color(0xFF626068),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),

        ],
        ),

    );
    
  }

}