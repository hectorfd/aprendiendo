import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryButton(text: 'Explorar'),
          DividerLine(),
          CategoryButton(text: 'Todos'),
          CategoryButton(text: 'Mixes'),
          CategoryButton(text: 'Música'),
          CategoryButton(text: 'Otro'),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;

  CategoryButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

class DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      color: Colors.white24,
    );
  }
}
