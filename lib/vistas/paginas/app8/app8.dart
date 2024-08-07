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
      backgroundColor:const Color(0xFFF3F8FE),
      appBar: AppBar(
        title:Text('App 8 Hira Riaz', style: GoogleFonts.poppins(color: Colors.grey, fontSize: scaleFactor * 25, fontWeight: FontWeight.w600),),

      ),
      body: SafeArea(child:Padding(
        padding: EdgeInsets.all(8.0 * scaleFactor),
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16 * scaleFactor),
                  boxShadow: [BoxShadow(color: Colors.black45, offset: Offset(0, 7), blurRadius: 16 * scaleFactor)],
        
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.align_horizontal_left,),
                        Icon(Icons.more_vert,)
                      ],
                    )
                  ],
                ),
              ),
            ],
        ),
      ),
      ),
    );
  }

}