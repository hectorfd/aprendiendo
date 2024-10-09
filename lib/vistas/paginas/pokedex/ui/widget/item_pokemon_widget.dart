import 'package:aprendiendo/vistas/paginas/pokedex/models/pokemon_model.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/pages/detail_page.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/general/colors.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/widget/item_type_widget.dart';
import 'package:flutter/material.dart';

class ItemPokemonWidget extends StatelessWidget {
  // String name;
  // String img;
  // List<String> type;

  PokemonModel pokemon;

  ItemPokemonWidget({super.key, 
    // required this.name,
    // required this.img,
    // required this.type,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    //print(type);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) => DetailPage(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorsPokemon[pokemon.type[0]],
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 120,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Image.network(
                pokemon.img,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "assets/images/whoisthat.png",
                    height: 100,
                  );
                },
              ),
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
                    pokemon.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...pokemon.type
                      .map((e) => ItemTypeWidget(
                            text: e,
                          ))
                      ,
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