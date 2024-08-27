import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String fullName = "";
  String address = "";
  bool darkModeGet = true;
  int genero = 0;
  String sexo = '';
  String darkModeResult = '';

  @override
  void initState() {
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    fullName = _preferences.getString("fullName") ?? "-";
    address = _preferences.getString("address") ?? "-";
    darkModeGet = _preferences.getBool("darkMode") ?? false;
    genero = _preferences.getInt("gender") ?? 0;
    
    setState(() {
      //counter == 1 ||counter == -1 ? texto = 'Click': texto = 'Clicks';
        darkModeGet == true? darkModeResult = 'activo': darkModeResult = 'inactivo';
        genero == 1? sexo = 'Macho':sexo = 'Femenino';
    });
    print(fullName);
    print(address);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mi Información",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12.0,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(fullName),
              subtitle: Text("Nombre completo"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text(address),
              subtitle: Text("Dirección"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(darkModeResult.toString()),
              subtitle: Text("Modo oscuro"),
            ),
            ListTile(
              leading: Icon(Icons.transgender),
              title: Text(sexo),
              subtitle: Text("Genero"),
            ),
          ],
        ),
      ),
    );
  }
}