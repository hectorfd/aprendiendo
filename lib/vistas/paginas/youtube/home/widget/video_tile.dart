import 'package:flutter/material.dart';
class VideoTile extends StatelessWidget {
  const VideoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              'https://images.pexels.com/photos/20775632/pexels-photo-20775632/free-photo-of-mar-amanecer-paisaje-naturaleza.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(4),
                child: const Text('23:22', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/50'),
          ),
          title: Text('titulo del video'),
          subtitle: Text('autoro creador • 8.8M de vistas que va ser • hace 1 año'),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
