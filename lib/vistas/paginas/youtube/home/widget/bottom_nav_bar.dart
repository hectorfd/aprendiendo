import 'package:flutter/material.dart';

class YouTubeBottomNav extends StatelessWidget {
  const YouTubeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Principal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Suscripciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection),
          label: 'Biblioteca',
        ),
      ],
    );
  }
}
