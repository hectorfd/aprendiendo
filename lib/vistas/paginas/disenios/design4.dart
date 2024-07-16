import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Design4 extends StatelessWidget {
  const Design4({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: scaleFactor * 10, top: scaleFactor * 3),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: iconSize * 1.5,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.translate,
              size: iconSize * 1.5,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border, size: iconSize * 1.5),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.logout_rounded, size: iconSize * 1.5),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(scaleFactor * 30),
          child: Container(
            color: Colors.grey.withOpacity(0.5),
            height: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(scaleFactor * 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HEALTH',
                style: TextStyle(
                  fontSize: 22 * scaleFactor,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
              Text(
                'Morning Exercise Boots Concentration',
                style: GoogleFonts.playball(
                  textStyle: TextStyle(
                    fontSize: scaleFactor * 40,
                    fontWeight: FontWeight.w600,
                  ),
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20 * scaleFactor),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25 * scaleFactor,
                    backgroundImage:const AssetImage('assets/images/persona1.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(scaleFactor * 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Andrea Gonzales',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: scaleFactor * 18,
                          ),
                        ),
                        Text(
                          'jueves, 11 de julio de 2024',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: scaleFactor * 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                 const Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.people_sharp, color: Colors.white, size: 30 * scaleFactor),
                    label: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white, fontSize: 14 * scaleFactor),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.green.shade600),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(scaleFactor * 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              Center(
                child: Image.asset(
                  'assets/images/persona2.jpg',
                  width: screenSize.width * 1,
                ),
              ),
              SizedBox(height: screenSize.height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Photo by: ',
                    style: TextStyle(
                      fontSize: scaleFactor * 14,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Hector FD',
                    style: TextStyle(
                      fontSize: scaleFactor * 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.005),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: SizedBox(
                  width: screenSize.width,
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style.copyWith(fontSize: scaleFactor * 18),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'L',
                          style: TextStyle(
                            fontSize: scaleFactor * 60,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextSpan(
                          text:
                              'orem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Mauris pharetra magna id leo fermentum, ac dignissim justo tempor. Proin ac mauris ex. Cras nec justo nec nulla convallis laoreet. Aenean euismod risus id nisl dignissim, sit amet facilisis justo pellentesque orem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Mauris pharetra magna id leo fermentum, ac dignissim justo tempor. Proin ac mauris ex. Cras nec justo nec nulla convallis laoreet. Aenean euismod risus id nisl dignissim, sit amet facilisis justo pellentesque.',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: scaleFactor * 18,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             
              SizedBox(height: 100 * scaleFactor), // Espacio adicional para que el scroll sea efectivo
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration:const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child:const Icon(Icons.arrow_downward, size: 40,),
      ),
    );
  }
}


