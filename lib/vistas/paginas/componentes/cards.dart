import 'package:flutter/material.dart';

class Cards extends StatelessWidget{
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Cards Page'),
        backgroundColor:const Color(0xFFF2E8FE),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            //color: const Color(0xFFEEE8DF),
            decoration: BoxDecoration(
              //colors.white,
              color:const Color(0xFFEEE8DF),
              borderRadius: BorderRadius.circular(10),
              
              boxShadow:const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                ),
              ],

            ),
            
           child: Column(
              children: [
                const Text(
                  'Commodo fugiat fugiat in pariatur et labore fugiat nisi fugiat mollit non exercitation. Non amet reprehenderit irure commodo aliqua cupidatat quis. Esse eu cillum non proident nulla qui ea nisi. Est Lorem anim excepteur cillum sit aute anim et.',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Sigueme'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          )
        ],
      ),
    );
  }

}