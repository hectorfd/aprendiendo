import 'package:flutter/material.dart';

class Design2 extends StatelessWidget{
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            //?: redondear imagen con ClipRREct
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.network(
                'https://cdn1.unitedinfocus.com/uploads/14/2023/10/GettyImages-1748851913-1140x810.jpg',
                fit: BoxFit.cover,
              ),
            ),
            
          ),
          const Positioned.fill(
            top: 480,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                'Cillum commodo excepteur non velit do cillum ullamco. Magna Lorem ex et reprehenderit adipisicing veniam culpa fugiat nulla. Commodo occaecat do proident ad. Proident culpa occaecat consectetur ullamco eu eu eu culpa occaecat consectetur ullamco.',
                style: const TextStyle(
                  color: Color(0xFF828287),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ),
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme:const IconThemeData(
                color: Colors.white, 
                size: 30, 
              ),
              actions: [
                
                Container(
                  //bordes redondeados
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.9),
                    ),
                  margin: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.heart_broken_rounded,
                      color: Colors.red, // Color del ícono
                    ),
                  ),
                ),
              ],
            ),
          ),
          // titulo
          Positioned(
            top: 340,
            left: 0,
            right: 0,
            child: Container(
              padding:const  EdgeInsets.all(30),
              child:const Text(
                'England Defender to leave Manchester City',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  ),
                ),
            ),
          ),
          //fecha
          Positioned(
            top: 435,
            left: 0,
            right: 0,
            child: Container(
              padding:const  EdgeInsets.all(30),
              child:const Text(
                'Thursday 01 July 2024 | England',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  ),
                  ),
                  //párrafo con efecto transparente en bottom
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 300,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.7),
                            Colors.white.withOpacity(0.2),
                          
                            ],
                      ),
                    ),
                  ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 300,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.7),
                            Colors.white.withOpacity(0.2),
                          
                            ],
                      ),
                    ),
                  ),
                  ),
                  //crear boon read more
                  Positioned(
                    bottom: 150,
                    left: 330,
                    right: 0,
                    child: Container(
                    padding:const  EdgeInsets.all(30),
                            child:const Text(
                            'Ver mas',
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                     const Positioned(
                    bottom: 115,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                    child: Row(
                      
                      children: [
                        Icon(
                          Icons.bolt,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        SizedBox(width: 0),
                        Text(
                          'Now Discussing',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                         Spacer(),
                        CircleAvatar(
                          //backgroundImage: AssetImage('assets/image/Flutter.png'),
                          backgroundImage: AssetImage('assets/images/C#.png'),
                          radius: 15,
                        ),
                         
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Python.png'),
                          radius: 15,
                        ),
                         
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/logo-UTEA.png'),
                          radius: 15,
                        ),
                         SizedBox(width: 0),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 15,
                          child: Text('+15', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        SizedBox(width: 0),
                      ],
                    ),
                    ),
                    
                    ),
                    Positioned(
                      bottom: 30,
                      left: 0,
                      right: 0,
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton.icon(
                        
                        onPressed: (){},
                        
                        label: const Text('Comentar',style: TextStyle(color: Colors.white),),
                        icon: const Icon(Icons.comment, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding:const EdgeInsets.symmetric(vertical: 18,horizontal: 15),
                              minimumSize:const Size(double.infinity, 60), 
                              textStyle: const TextStyle(fontSize: 20),
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                      )
                    ),
                    

                    ),

        ],
      ),
      
      
    );
  }

}