import 'package:flutter/material.dart';

class Design3 extends StatelessWidget{
  const Design3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra
      appBar: AppBar(
        title:const Text('Happy Reading',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
        centerTitle: true,
        actions: [
          IconButton(
            icon:const Icon(Icons.workspaces),
            
            onPressed: () {
              },
              ),
              ],
              ),
      //cuerpo
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 5,
            right: 5,
            child: Container(
            
            padding:const EdgeInsets.all(5.0),

           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  'https://images.pexels.com/photos/16973651/pexels-photo-16973651/free-photo-of-montanas-punto-de-referencia-historia-turismo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  
                  ),

              ),
              
                  ],
                  ),
            ),
          ),
          Positioned(
            //add Button
            top: 10,
            left: 330,
            right: 20,
            child: ElevatedButton(
              style:const ButtonStyle(
                backgroundColor:const WidgetStatePropertyAll<Color>(Colors.white),
                foregroundColor:const WidgetStatePropertyAll<Color>(Colors.green),
            
               
              ),
              onPressed: () {
                
                },
                child:const Text('Environment'),
                ),
          ),
          
          const Positioned(
            top: 280,
            left: 20,
            right: 20,
            child: Text(
              'Machupicchu Eu quis non dolore eiusmod ad nulla culpa ex consequat officia fugiat tempor ipsum.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                ),
            ),
            ),

            const Positioned(
              top: 380,
              left: 20,
              right: 20,

              child: Row(
                children: [
                  CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Python.png'),
                          radius: 10,
                        ),
                        SizedBox(width: 10),
                  Text(
                    'Hector FD',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      ),
                      ),

                      Text(
                    ' • Julio 03 del 2014',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      ),
                      ),
                ],

              ),
            ),
            const Positioned.fill(
            top: 400,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Cillum commodo excepteur non velit do cillum ullamco. Magna Lorem ex et reprehenderit adipisicing veniam culpa fugiat nulla. Commodo occaecat do proident ad.',
                style:  TextStyle(
                  color: Color(0xFF828287),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ),
            const Positioned.fill(
            top: 470,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Cillum commodo excepteur non velit do cillum ullamco. Magna Lorem ex et reprehenderit adipisicing veniam culpa fugiat nulla. Commodo occaecat do proident ad.',
                style:  TextStyle(
                  color: Color(0xFF828287),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ),

              
        ],
      ),
    );
  }
}