import 'package:aprendiendo/vistas/paginas/pokedex/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  //const DetailPage({super.key});
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300, 
        elevation: 0, 
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {}, 
          ),
        ],
        title: Text(pokemon.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true, 
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25, 
            width: double.infinity,
            color: Colors.teal.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  pokemon.img,
                  height: MediaQuery.of(context).size.height * 0.4, 
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}