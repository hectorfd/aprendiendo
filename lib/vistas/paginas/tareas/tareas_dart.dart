import 'package:aprendiendo/vistas/paginas/home/home.dart';
import 'package:aprendiendo/vistas/paginas/home/vista-home.dart';
import 'package:aprendiendo/vistas/paginas/tareas/homeWork1.dart';
import 'package:aprendiendo/vistas/paginas/tareas/inputs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TareasDart extends StatelessWidget{
  const TareasDart({super.key});

  @override
  Widget build(BuildContext context) {
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      //double screenWidth = screenSize.width;
      //double screenHeight = screenSize.height;
      double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
     return Scaffold(
      backgroundColor: Color(0xFF400101),
      
      appBar: AppBar(
        toolbarHeight: scaleFactor * 50,
        centerTitle: true,
        title: Text('Tareas Dart', style:GoogleFonts.acme(fontSize: scaleFactor * 30, color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor:const Color(0xFF730202),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back, size: iconSize * 1.7, color: Colors.white,),
         ),
      )
      //body flexible
      ,body: SingleChildScrollView(
        
        child: Column(
          children: [
            SizedBox(height: 20 * scaleFactor),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homework1()));
              },
              child: Card(
                color: Color(0xFF516B8C),
                child: ListTile(
                leading: Icon(Icons.ads_click, size: iconSize * 1.7,color: Colors.amber,),
                title: Text('Calcular (+ - *)', style: GoogleFonts.poppins(fontSize: scaleFactor * 20, fontWeight: FontWeight.w400, color: Colors.white),),
                subtitle: Text('By: Hector Ferro Dávalos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: scaleFactor * 14, color: Colors.white),),
                trailing: Icon(Icons.calculate, size: iconSize * 1.7, color: Colors.white,),
              ),
              
              ),
            ),
            SizedBox(height: 20 * scaleFactor),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Inputs()));
              },
              child: Card(
                color: Color(0xFF516B8C),
                child: ListTile(
                leading: Icon(Icons.ads_click, size: iconSize * 1.7,color: Colors.amber,),
                title: Text('Probar inputs', style: GoogleFonts.poppins(fontSize: scaleFactor * 20, fontWeight: FontWeight.w400, color: Colors.white),),
                subtitle: Text('By: Hector Ferro Dávalos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: scaleFactor * 14, color: Colors.white),),
                trailing: Icon(Icons.attach_money_rounded, size: iconSize * 1.7, color: Colors.green,),
              ),
              
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}

