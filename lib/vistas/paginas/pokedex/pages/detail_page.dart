import 'package:aprendiendo/vistas/paginas/pokedex/models/pokemon_model.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/widget/item_data_widget.dart';
import 'package:aprendiendo/vistas/paginas/pokedex/ui/widget/item_type_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green.shade300,
      // appBar: AppBar(
      //   elevation: 0,
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.green.shade300,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.favorite_border,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            right: -30,
            child: Image.asset(
              "assets/images/pokeball.png",
              height: 200,
              color: Colors.white.withOpacity(0.30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Bulbasaur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        ItemTypeWidget(text: "Grass"),   
                        ItemTypeWidget(text: "Poison"),  
                      ],
                    ),


                  ],
                ),
                Text(
                  "#001",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: SizedBox(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned.fill(
                          top: -150,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                             width: MediaQuery.of(context).size.width, 
                              height: 200, 
                              alignment: Alignment.topCenter, 
                              child: Image.network(
                                "http://www.serebii.net/pokemongo/pokemon/001.png",
                                width: 200, 
                                height: 200, 
                                
                                fit: BoxFit.cover, 
                              ),
                            ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: [
                              const Text(
                                "About Pokemon",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ItemDataWidget(title: 'Peso',data: '60 K',),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}