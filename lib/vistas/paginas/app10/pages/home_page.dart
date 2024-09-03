import 'package:aprendiendo/vistas/paginas/app10/db/db_admin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                DbAdmin.db.initDatabase();
                print("Creando base de datos");
              },
              child: Text("Mostrar data"),
            ),

            ElevatedButton(
              onPressed: () {
                DbAdmin.db.insertTask();
                print("Tarea insertada!!");
              },
              child: Text("Insertar Task"),
            ),
          ],
        ),
      ),
    );
  }
}