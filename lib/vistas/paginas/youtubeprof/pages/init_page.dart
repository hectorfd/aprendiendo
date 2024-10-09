import 'package:aprendiendo/vistas/paginas/youtubeprof/pages/home_page.dart';
import 'package:aprendiendo/vistas/paginas/youtubeprof/ui/general/colors.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageprof(),
    const Center(child: Text("Shorts")),
    const Center(child: Text("Agregar")),
    const Center(child: Text("Suscripciones")),
    const Center(child: Text("Biblioteca")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          "assets/images/Youtube_logo.png",
          height: 26,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: const Text(
                    '9+',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(
            backgroundColor: kBrandSecundaryColor,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
            radius: 15,
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBrandPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13.0,
        selectedItemColor: Colors.white,
        unselectedFontSize: 13.0,
        unselectedItemColor: Colors.white70,
        currentIndex: _currentIndex,
        onTap: (int value) {
          _currentIndex = value;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Icon(
                Icons.add_circle_outline_rounded,
                size: 35.0,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_rounded,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
