import 'package:aprendiendo/vistas/paginas/pokedex/models/pokemon_model.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/pages/detail_page.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/widget/item_type_widget.dart';
import 'package:flutter/material.dart';

class ItemPokemonWidget extends StatelessWidget {
 String name;
  String img;
  List<String> type;

  ItemPokemonWidget({
    required this.name,
    required this.img,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    // print(type);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) => DetailPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 135,
                color: Colors.white.withOpacity(0.27),
              ),
              bottom: -10,
              right: -10,
            ),
            Positioned(
              child: Image.network(
                img,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "assets/images/whoisthat.png",
                    height: 50,
                  );
                },
              ),
              bottom: -10,
              right: -10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...type
                      .map((e) => ItemTypeWidget(
                            text: e,
                          ))
                      .toList(),
                  // Column(
                  //   children: type.map((e) => ItemTypeWidget()).toList(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}