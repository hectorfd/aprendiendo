import 'package:flutter/material.dart';

class Avatar extends StatelessWidget{
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Avatar Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 1.0,
        actions: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://fastly.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body:const Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/persona1.jpg'),
            fadeInDuration: Duration(milliseconds: 1000),
            fit: BoxFit.contain,
          ),
        ],
      ),

    );
  }

}