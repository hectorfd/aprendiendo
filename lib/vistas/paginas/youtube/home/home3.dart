import 'package:aprendiendo/vistas/paginas/youtube/home/widget/app_bar.dart';
import 'package:aprendiendo/vistas/paginas/youtube/home/widget/bottom_nav_bar.dart';
import 'package:aprendiendo/vistas/paginas/youtube/home/widget/category_row.dart';
import 'package:aprendiendo/vistas/paginas/youtube/home/widget/video_tile.dart';
import 'package:flutter/material.dart';



class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: YouTubeAppBar(),
        body: YouTubeBody(),
        bottomNavigationBar: YouTubeBottomNav(),
      ),
    );
  }
}

// Cuerpo de la página
class YouTubeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryRow(),
        Expanded(
          child: ListView.builder(
            itemCount: 5, // se hace muy lento
            itemBuilder: (context, index) {
              return VideoTile();
            },
          ),
        ),
      ],
    );
  }
}
