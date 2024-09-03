import 'package:aprendiendo/vistas/paginas/app9/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({super.key});

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
   final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  bool isDarkMode = false;
  int gender = 1;

  saveSharedPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("fullName", _fullNameController.text);
    preferences.setString("address", _addressController.text);
    preferences.setBool("darkMode", isDarkMode);
    preferences.setInt("gender", gender);
    print("Guardando en shared preferences!!!");
  }

  getSharedPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String name = preferences.getString("fullName") ?? "-";
    String address = preferences.getString("address") ?? "-";
    bool darkMode = preferences.getBool("darkMode") ?? false;
    int genero = preferences.getInt("gender") ?? 0;

    print(name);
    print(address);
    print(darkMode);
    print(genero);
  }

  @override
  Widget build(BuildContext context) {
    
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

   return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shared Preferences App",
        ),
      ),
      drawer: const MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Configuración General",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(
                hintText: "Dirección actual",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Switch(value: true, onChanged: (bool value){}),
            SwitchListTile(
              value: isDarkMode,
              onChanged: (bool value) {
                isDarkMode = value;
                setState(() {});
              },
              title: const Text("Dark mode"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Radio(value: 0, groupValue: 1, onChanged: (int? value){},),
            RadioListTile(
              value: 1,
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
              title: const Text("Male"),
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
              title: const Text("Female"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                saveSharedPreferences();
              },
              icon: const Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: const Text(
                "Save Data",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
