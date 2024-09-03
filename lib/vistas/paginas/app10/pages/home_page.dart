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
              onPressed: () async {
                await DbAdmin.db.initDatabase();
                print("Base de datos creada exitosamente");
              },
              child: Text("Mostrar data"),
            ),
          ],
        ),
      ),
    );
  }
}
