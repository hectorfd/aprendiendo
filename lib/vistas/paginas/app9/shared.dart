import 'package:flutter/material.dart';

class Shared extends StatefulWidget {
  const Shared({super.key});

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  int? _sexo;
  ValueNotifier<bool> isDarkMode = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode,
      builder: (context, isDark, child) {
        return MaterialApp(
          theme: isDark ? ThemeData.dark() : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Home', style: TextStyle(fontSize: 25 * scaleFactor, color: Colors.white)),
              backgroundColor: const Color(0xFF3E50B5),
            ),
            drawer: Container(
              width: 300 * scaleFactor,
              child: Drawer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 150 * scaleFactor,
                        child: UserAccountsDrawerHeader(
                          accountName: Text(
                            "Fiorella Gonzales Torres",
                            style: TextStyle(fontSize: 18 * scaleFactor),
                          ),
                          accountEmail: Text("Administrador", style: TextStyle(fontSize: 14 * scaleFactor)),
                          currentAccountPicture: Container(
                            alignment: Alignment.bottomCenter,
                            child: CircleAvatar(
                              radius: 30 * scaleFactor,
                              backgroundColor: Colors.white,
                              backgroundImage: const NetworkImage(
                                "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              ),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage("https://images.pexels.com/photos/315191/pexels-photo-315191.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12 * scaleFactor),
                        child: Column(
                          children: [
                            SizedBox(height: 10 * scaleFactor),
                            ListTile(
                              leading: Icon(Icons.person, size: 1.7 * iconSize, color: isDark ? Colors.white70 : Colors.black38),
                              title: Padding(
                                padding: EdgeInsets.only(left: 20 * scaleFactor),
                                child: Text('My Profile', style: TextStyle(fontSize: 18 * scaleFactor)),
                              ),
                              onTap: () {},
                            ),
                            SizedBox(height: 20 * scaleFactor),
                            ListTile(
                              leading: Icon(Icons.file_copy, size: 1.7 * iconSize, color: isDark ? Colors.white70 : Colors.black38),
                              title: Padding(
                                padding: EdgeInsets.only(left: 20 * scaleFactor),
                                child: Text('Portafolio', style: TextStyle(fontSize: 18 * scaleFactor)),
                              ),
                              onTap: () {},
                            ),
                            SizedBox(height: 20 * scaleFactor),
                            ListTile(
                              leading: Icon(Icons.lock, size: 1.7 * iconSize, color: isDark ? Colors.white70 : Colors.black38),
                              title: Padding(
                                padding: EdgeInsets.only(left: 20 * scaleFactor),
                                child: Text('Change Password', style: TextStyle(fontSize: 18 * scaleFactor)),
                              ),
                              onTap: () {},
                            ),
                            SizedBox(height: 20 * scaleFactor),
                            Divider(indent: 12, endIndent: 12),
                            SizedBox(height: 20 * scaleFactor),
                            ListTile(
                              leading: Icon(Icons.exit_to_app, size: 1.7 * iconSize, color: isDark ? Colors.white70 : Colors.black38),
                              title: Padding(
                                padding: EdgeInsets.only(left: 20 * scaleFactor),
                                child: Text('Logout', style: TextStyle(fontSize: 18 * scaleFactor)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(20 * scaleFactor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Configuración general',
                    style: TextStyle(fontSize: 24 * scaleFactor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Elvis',
                      labelStyle: TextStyle(fontSize: 20 * scaleFactor),
                    ),
                    style: TextStyle(fontSize: 20 * scaleFactor),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Lopez',
                      labelStyle: TextStyle(fontSize: 20 * scaleFactor),
                    ),
                    style: TextStyle(fontSize: 20 * scaleFactor),
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20 * scaleFactor),
                        child: Text('Dark Mode', style: TextStyle(fontSize: 20 * scaleFactor)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20 * scaleFactor),
                        child: Switch(
                          value: isDark,
                          onChanged: (bool value) {
                            isDarkMode.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  Text(
                    'Gender',
                    style: TextStyle(fontSize: 16 * scaleFactor),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20 * scaleFactor),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            value: 1,
                            groupValue: _sexo,
                            onChanged: (int? value) {
                              setState(() {
                                _sexo = value;
                              });
                            },
                          ),
                        ),
                        Text('Male', style: TextStyle(fontSize: 20 * scaleFactor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20 * scaleFactor),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            value: 2,
                            groupValue: _sexo,
                            onChanged: (int? value) {
                              setState(() {
                                _sexo = value;
                              });
                            },
                          ),
                        ),
                        Text('Female', style: TextStyle(fontSize: 20 * scaleFactor)),
                      ],
                    ),
                  ),
                  SizedBox(height: 40 * scaleFactor),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.save, size: 1.7 * iconSize, color: Colors.white),
                        label: Text('Save Data', style: TextStyle(fontSize: 22 * scaleFactor, color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16.0 * scaleFactor),
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
