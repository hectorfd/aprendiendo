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
      body: FutureBuilder(
        future: DbAdmin.db.getTask(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            List<Map<String, dynamic>> myTask = snap.data;
            return ListView.builder(
              itemCount: myTask.length,
              itemBuilder: (BuildContext context, int index) {
                String title = myTask[index]['title'];
                String description = myTask[index]['description'];
                int id = myTask[index]['id'];
                String status = myTask[index]['status']; 

                return ListTile(
                  title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(description),
                  onTap: () {
                    
                    _showTaskDetailsDialog(context, id, title, description, status);
                  },
                );
              },
            );
          }
          return const Center(
            // Círculo de carga
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  
  void _showTaskDetailsDialog(BuildContext context, int id, String title, String description, String status) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), 
          ),
          title: const Text("Detalle", style: TextStyle(fontWeight: FontWeight.bold),),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, 
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "ID: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: "$id",
                        style:const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Título: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: "$title",
                        style:const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Descripción: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: "$description",
                        style: const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Estado: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: "$status",
                        style:const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],

            ),
          ),
          actions: [
            Center(
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor:const Color(0XFF69A1FA),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), 
                  ), 
                ),
                
                onPressed: () {
                  Navigator.of(context).pop(); 
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white, 
                  size: 15,
                ),
                label:const Text(
                  "Volver",
                  style: TextStyle(color: Colors.white), 
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
