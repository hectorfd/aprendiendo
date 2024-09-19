class PokemonModel {
  String name;
  String img;

  List<String> type;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  double spawnChance;
  double avgSpawns;
  String spawnTime;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json['name'],
        img: json['img'],
        type: List<String>.from(json['type'].map((x) => x)),
        height: json['height'],
        weight: json['weight'],
        candy: json['candy'],
        candyCount: json['candy_count'] ?? 0, 
        egg: json['egg'],
        spawnChance: json['spawn_chance']?.toDouble() ?? 0.0, 
        avgSpawns: json['avg_spawns']?.toDouble() ?? 0.0, 
        spawnTime: json['spawn_time'],
      );
}
