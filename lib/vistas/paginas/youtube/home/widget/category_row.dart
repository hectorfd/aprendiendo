import 'package:flutter/material.dart';
import 'package:path/path.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryButton(text: 'Explorar',),
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
  final Color textColor;
  const CategoryButton({super.key, 
    required this.text,
    this.textColor = Colors.white, 
  });

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
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      color: Colors.white24,
    );
  }
}
