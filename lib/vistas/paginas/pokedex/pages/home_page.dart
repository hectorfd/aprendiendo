import 'dart:convert';

import 'package:aprendiendo/vistas/paginas/pokedex/models/pokemon_model.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/pages/detail_page.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/widget/item_pokemon_widget.dart';
import 'package:flutter/material.dart';  // Este es necesario para usar Scaffold, Column, Text, etc.
import 'package:http/http.dart' as http;

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List pokemons = [];

  List<PokemonModel> pokemonModel = [];

  @override
  void initState() {
    super.initState();
    getDataPokemon();
  }

  void getDataPokemon({int limit = 20}) async {  // Puedes ajustar el límite según necesites
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      List<dynamic> allPokemons = myMap["pokemon"];
      pokemonModel = allPokemons.take(limit)
          .map<PokemonModel>((e) => PokemonModel.fromJson(e))
          .toList();
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    //getDataPokemon();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pokedex",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                GridView.count(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.3,
                  children: pokemonModel.map((e) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(pokemon: e),
                          ),
                        );
                      },
                      child: ItemPokemonWidget(pokemon: e),  // Actualizado para pasar el modelo completo
                    ),
                  ).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}