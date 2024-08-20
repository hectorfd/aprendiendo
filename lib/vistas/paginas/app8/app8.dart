import 'package:aprendiendo/vistas/paginas/app8/widgets/item_list_widget.dart';
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
        centerTitle: true,
      ),
      body: SafeArea(child:Padding(
        padding: EdgeInsets.all(20 * scaleFactor),
        child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(scaleFactor * 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30 * scaleFactor),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), offset: Offset(0, 7 * scaleFactor), blurRadius: 25 * scaleFactor)],
        
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.align_horizontal_left,size: iconSize * 0.8,),
                        Icon(Icons.more_vert,size: iconSize * 0.8,)
                      ],
                    ),
                    SizedBox(height: 24 * scaleFactor,),
                    
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      backgroundColor: Colors.amber,
                      radius: 60 * scaleFactor,
                    ),
                    SizedBox(height: 24 * scaleFactor,),
                    Text('Hira Riaz', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: scaleFactor * 26, color:const Color(0xFF3E4685)),),
                    Text('UX/UI Designer', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: scaleFactor * 12, color:const Color(0xFF767676)),),
                    SizedBox(height: 40 * scaleFactor,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("\$8900", style: TextStyle(color: const Color(0xFF3E4685), fontSize: 20 * scaleFactor, fontWeight: FontWeight.w400),),
                            SizedBox(height: 8 * scaleFactor,),
                            Text("Income", style: TextStyle(fontSize: 12 * scaleFactor),),
                          ],
                        ),
                        SizedBox(
                          height: 50 * scaleFactor,
                          width: 50 * scaleFactor,
                          child: VerticalDivider(
                            color: Colors.black.withOpacity(0.25),
                          ),
                        ),
                        Column(
                          children: [
                            Text("\$5500", style: TextStyle(color: const Color(0xFF3E4685),  fontSize: 20 * scaleFactor, fontWeight: FontWeight.w400),),
                            SizedBox(height: 8 * scaleFactor,),
                            Text("Expenses", style: TextStyle(fontSize: 12 * scaleFactor),),
                          ],
                        ),
                        SizedBox(
                          height: 50 * scaleFactor,
                          width: 40 * scaleFactor,
                          child: VerticalDivider(
                            color: Colors.black.withOpacity(0.25),
                          ),
                        ),
                        Column(
                          children: [
                            Text("\$890", style: TextStyle(color: const Color(0xFF3E4685), fontSize: 20 * scaleFactor, fontWeight: FontWeight.w400),),
                            SizedBox(height: 8 * scaleFactor,),
                            Text("Loan", style: TextStyle(fontSize: 12 * scaleFactor),),
                          ],
                        ),
                         SizedBox(
                            height: 20.0 * scaleFactor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Overview",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0 * scaleFactor,
                                      color: Color(0xff1b263b),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0 *scaleFactor,
                                  ),
                                  Icon(
                                    Icons.notification_add,
                                    size: 20.0 *scaleFactor,
                                    color: Color(0xff1b263b),
                                  ),
                                ],
                              ),
                              Text(
                                "Sept 13, 2020",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0 * scaleFactor,
                                    color: Color(0xff1b263b)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22.0 * scaleFactor,
                          ),
                          ItemListWidget(),
                          // ItemListWidget(),
                          // ItemListWidget(),
                          // ItemListWidget(),
                          // ItemListWidget(),
                          // ItemListWidget(),
                      ],
                    ),
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