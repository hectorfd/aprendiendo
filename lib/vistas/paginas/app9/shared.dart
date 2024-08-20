import 'package:flutter/material.dart';

class Shared extends StatelessWidget {
  const Shared({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference App', style: TextStyle(fontSize: 25 * scaleFactor),),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/1819650/pexels-photo-1819650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 300 * scaleFactor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30 * scaleFactor,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      Text(
                        "Fiorella Gonzales Torres",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0 * scaleFactor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Administrador",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0 * scaleFactor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20 * scaleFactor),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("My profile"),
                      ),
                      SizedBox(height: 20 * scaleFactor),
                      ListTile(
                        leading: Icon(Icons.file_copy),
                        title: Text("Portafolio"),
                      ),
                      SizedBox(height: 20 * scaleFactor),
                      ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("change password"),
                      ),
                      SizedBox(height: 20 * scaleFactor),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("My profile"),
                      ),
                      Divider(
                        indent: 12,
                        endIndent: 12,
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Logout"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
              style: TextStyle(
                fontSize: 24 * scaleFactor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20 * scaleFactor),
            TextFormField(
              decoration:InputDecoration(
                
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
                Text('Dark Mode', style: TextStyle(fontSize: 20 * scaleFactor),),
                Switch(
                  value: false,
                  onChanged: (bool value) {

                  },
                ),
              ],
            ),
            SizedBox(height: 20 * scaleFactor),
            Text(
              'Gender',
              style: TextStyle(fontSize: 16 * scaleFactor),
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (int? value) {},
                ),
                Text('Male', style: TextStyle(fontSize: 20 * scaleFactor),),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: 1,
                  onChanged: (int? value) {},
                ),
                Text('Female', style: TextStyle(fontSize: 20 * scaleFactor),),
              ],
            ),
            SizedBox(height: 40 *scaleFactor),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  
                  onPressed: () {},
                  icon: Icon(Icons.save, size: 1.7 * iconSize,color: Colors.white,),
                  label: Text('Save data',style: TextStyle(fontSize: 22 * scaleFactor, color: Colors.white),),
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
    );
  }
}