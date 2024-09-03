import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    //double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Page'),
        backgroundColor: const Color(0xFFF2E8FE),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              margin: EdgeInsets.all(10 * scaleFactor),
              padding: EdgeInsets.all(20 * scaleFactor),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20 * scaleFactor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2 * scaleFactor, 2 * scaleFactor),
                    blurRadius: 5 * scaleFactor,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in...',
                    style: TextStyle(fontSize: 18 * scaleFactor),
                    textAlign: TextAlign.center,
                    
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      //primary: Colors.purple,
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30 * scaleFactor),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 140 * scaleFactor, vertical: 15 * scaleFactor),
                    ),
                    child: Text(
                      'Follow me',
                      style: TextStyle(fontSize: 18 * scaleFactor, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            // Segunda tarjeta con avatar y texto
            Container(
              margin: EdgeInsets.all(10 * scaleFactor),
              padding: EdgeInsets.all(20 * scaleFactor),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20 * scaleFactor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2 * scaleFactor, 2 * scaleFactor),
                    blurRadius: 5 * scaleFactor,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 120 * scaleFactor,
                    //height: 100 * scaleFactor,
                    
                    child: const Image(
                      image: AssetImage('assets/images/image3.png',),
                      
                    ),
                  ),
                  SizedBox(width: 10 * scaleFactor),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fiorella Guadalupe de las Nieves Azules',
                          style: TextStyle(
                            fontSize: 26 * scaleFactor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5 * scaleFactor),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
                          style: TextStyle(fontSize: 18 * scaleFactor),
                          
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Tercera tarjeta con imagen y texto
            Container(
              margin: EdgeInsets.all(10 * scaleFactor),
              padding: EdgeInsets.all(20 * scaleFactor),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea ...',
                      style: TextStyle(fontSize: 18 * scaleFactor),
                      //textAlign: TextAlign.center,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 10 * scaleFactor),
                  Container(
                    width: 180 * scaleFactor,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * scaleFactor),
                      
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/Python.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

