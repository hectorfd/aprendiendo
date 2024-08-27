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
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("fullName", _fullNameController.text);
    _preferences.setString("address", _addressController.text);
    _preferences.setBool("darkMode", isDarkMode);
    _preferences.setInt("gender", gender);
    print("Guardando en shared preferences!!!");
  }

  getSharedPreferences() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    String name = _preferences.getString("fullName") ?? "-";
    String address = _preferences.getString("address") ?? "-";
    bool darkMode = _preferences.getBool("darkMode") ?? false;
    int genero = _preferences.getInt("gender") ?? 0;

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
        title: Text(
          "Shared Preferences App",
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuración General",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
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
              title: Text("Dark mode"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
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
              title: Text("Male"),
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
              title: Text("Female"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                saveSharedPreferences();
              },
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: Text(
                "Save Data",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
