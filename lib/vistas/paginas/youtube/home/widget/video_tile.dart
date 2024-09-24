import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              'https://via.placeholder.com/400', // Placeholder del video
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.all(4),
                child: Text('23:22', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/50'),
          ),
          title: Text('Lorem reprehenderit et adipisicing sunt.'),
          subtitle: Text('alanxelmundo • 8.8M de vistas • hace 5 años'),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
