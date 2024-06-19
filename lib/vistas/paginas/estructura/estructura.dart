import 'package:flutter/material.dart';

class Estructura extends StatelessWidget {
  const Estructura({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea Reto 1',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network(
            'https://live.staticflickr.com/5274/5865163533_6a4a0df427_b.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ciudad de Abancay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Row(
              children: [
                Expanded(child: 
                    Text(
                  'La ciudad de Abancay, capital de la región Apurímac.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                ),
                
            //SizedBox(height: 8,),
            Row(
               children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                SizedBox(width: 4.0),
                Text('1'),
              ],
            )
              ],
            ) 
            
          
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(Icons.call, 'Llamar'),
                _buildButtonColumn(Icons.near_me, 'ubicación'),
                _buildButtonColumn(Icons.share, 'Compartir'),
              ],
            ),
          ),
           
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Localizada en el sur de Perú, en el denominado valle de la eterna primavera, Abancay es una ciudad de aires coloniales que está entre las más lindas de todo el país. Rodeada de imponentes cerros, se caracteriza por sus calles estrechas y un entorno mágico que la convierten en un rincón verdaderamente encantador de los Andes.\n\nAbancay está ubicada a 907 km de la capital peruana, Lima, y a tan solo 197 km del Cusco.  Su centro es la Plaza Mayor, donde diferentes réplica de bronce representan a la variada fauna andina, con animales como el cóndor y el puma. A pocos metros de allí, se encuentra el Mirador de Usnomocco, desde el cual se obtiene una hermosa panorámica de todo el Valle de Abancay.\n\nUn punto turístico imperdible es el Santuario Nacional de Ampay, localizado a 6 km de la plaza principal y desde donde es posible observar un lindo paisaje, además de las diferentes especies de aves del lugar. Este sitio, por cierto, es excelente para llevar a cabo excursiones, así como para realizar caminatas, montañismo e incluso ciclismo.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label) {
    Color color = Colors.blue;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
