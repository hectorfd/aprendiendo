import 'package:flutter/material.dart';

class ItemDataWidget extends StatelessWidget {
  //const ItemDataWidget({super.key});

  String title;
  String data;

  ItemDataWidget({super.key, 
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(
            "$title: \t\t\t",
            style: const TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(
            data,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}