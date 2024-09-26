import 'package:flutter/material.dart';

class YouTubeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Youtube_logo.png', 
                height: 40,
              ),
              SizedBox(width: 8),
              Text('YouTube'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.cast),
              SizedBox(width: 12),
              Icon(Icons.notifications),
              SizedBox(width: 12),
              Icon(Icons.search),
              SizedBox(width: 12),
              CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/4310726/pexels-photo-4310726.jpeg'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
