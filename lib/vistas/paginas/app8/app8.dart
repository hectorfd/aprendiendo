import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App8 extends StatelessWidget{
  const App8({super.key});

  @override
  Widget build(BuildContext context) {
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      final double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return Scaffold(
      appBar: AppBar(
        title:Text('App 8 Hira Riaz', style: GoogleFonts.poppins(color: Colors.grey, fontSize: scaleFactor * 25, fontWeight: FontWeight.w600),),

      ),
    );
  }

}