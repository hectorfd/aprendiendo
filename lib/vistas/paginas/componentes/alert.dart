import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Alert extends StatelessWidget{
  const Alert({super.key});

  showMyAlert1(BuildContext context){
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      // double screenWidth = screenSize.width;
      // double screenHeight = screenSize.height;
      // double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return   AlertDialog(
          title: Text('Titulo',style: TextStyle(fontSize: scaleFactor * 30),),
          backgroundColor: Colors.yellow,
          content: Text('Mollit nisi ullamco magna ex in enim reprehenderit aute veniam proident aliqua laboris.',
          style: TextStyle(fontSize: scaleFactor * 20),),
          actions: [
            OutlinedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ),   
            // style: OutlinedButton.styleFrom(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(0),
            //   ),
            //   backgroundColor: Colors.white,
            // ), 
            child:Text('Cancelar',style: TextStyle(fontSize: scaleFactor * 20,color: Colors.white),)
            ),
            OutlinedButton(onPressed: (){
              
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              
            ),  
            child:Text('Aceptar', style: TextStyle(fontSize: scaleFactor *20,color: Colors.white),),
            ),
          ],
        );
      }
      );
  }
  //segundo alert
  showMyAlert2(BuildContext context){
    return showDialog(
      
      context: context,
      builder: (BuildContext context){
        final Size screenSize = MediaQuery.of(context).size;
        final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
        // double screenWidth = screenSize.width;
        //double screenHeight = screenSize.height;
        // double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
        return AlertDialog(
          
          // title: const Text(
          //   'Blog post published',
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          
          
          backgroundColor: Colors.white,
          content:Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              SizedBox(height: scaleFactor * 10,),
              Row(
                children: [
                  SizedBox(width: scaleFactor * 20),
                  SizedBox(
                    child: Expanded(
                      child: Icon(
                        Icons.border_left,
                        color: Colors.deepPurple,
                        size: scaleFactor *100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: scaleFactor * 10,),
              Row(
                children: [
                
              
                  SizedBox(width:scaleFactor * 10),
                  Expanded(
                    child: Text(
                      'Blog post published.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: scaleFactor * 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:scaleFactor * 10,),
              Row(
                
                children: [
                  SizedBox(width:scaleFactor * 10),
                  Expanded(
                    child: Text(
                      'Mollit nisi ullamco magna ex in enim reprehenderit aute veniam proident aliqua laboris.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:scaleFactor * 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.white,
                minimumSize:Size(150 * scaleFactor, 40 * scaleFactor),
              ),
              child: Text('Cancel',style: TextStyle(color: Colors.black,fontSize: scaleFactor * 20),),
            ),
            OutlinedButton(
              onPressed: () {
                
              },
              style: OutlinedButton.styleFrom(
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.deepPurple,
                
                minimumSize:Size(150 * scaleFactor, 40 * scaleFactor),
              ),
              child: Text(
                'Confirm',
                style: TextStyle(color: Colors.white,
                fontSize: scaleFactor *20,
                ),
              ),
              

            ),
          ],
        );

      }
      );
  }
  //alert 3
  showMyAlert3(BuildContext context){
    return showDialog(
    context: context,
    builder: (BuildContext context) {
        final Size screenSize = MediaQuery.of(context).size;
        final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;

      return AlertDialog(
        // title: const Text(
        //   'Your video has been uploaded!',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/persona1.jpg', 
              height:scaleFactor * 300.0,
            ),
            
            Row(
              //scrossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: scaleFactor),
                Expanded(
                  child: Text(
                    'Your video has been uploaded!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: scaleFactor * 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: scaleFactor),
                Expanded(
                  child: Text(
                    'You are video has finished uploading and is live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleFactor * 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: scaleFactor),
                Expanded(
                  child: Text(
                    'Share link ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: scaleFactor * 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder:const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      

                      hintText: '  untitledui.com/videos/porno',
                      hintStyle: TextStyle(
                        fontSize: 14 * scaleFactor,
                        color: Colors.black,
                      ),
                    ),
                    
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 14.0),
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), 
                    borderRadius: BorderRadius.circular(8.0), 
                  ),
                  
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              
                            },
                            icon: const Icon(Icons.copy),
                            iconSize: scaleFactor * 20,
                          ),
                          Title(color: Colors.black, child:Text('Copy Link ',style: 
                          TextStyle(
                            fontSize: scaleFactor *15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            ),
                            ),
                            ),
                        ],
                        
                      ),
                      
                      //Text('copy link',style: TextStyle(fontSize: scaleFactor * 15),),
                      
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: scaleFactor * 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor: Colors.white,
                                        minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
                                      ),
                                      child: Text('Skip',style: TextStyle(color: Colors.black, fontSize: scaleFactor * 15),),
                                    ),
                    ),
              Padding(padding: 
              EdgeInsets.only(left: 5 * scaleFactor, right: 5 * scaleFactor),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.deepPurple,
                    minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: scaleFactor * 15),
                  ),
                ),
              ),

              ],
            )

          ],
        ),
       
        
      );
    },
  );

  }

  showMyAlert4(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        final Size screenSize = MediaQuery.of(context).size;
        final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
        double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
        return AlertDialog(
          backgroundColor: Colors.white,
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9, 

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                SizedBox(height: 10* scaleFactor,),
                Row(
                  children: [
                    SizedBox(width: 10*scaleFactor),
                    SizedBox(
                      child: Expanded(
                        child: Icon(
                          Icons.playlist_add_circle,
                          color:const Color(0xFFF2E8FE),
                          size: iconSize * 5.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10 * scaleFactor,),
                Row(
                  children: [
                    SizedBox(width: 10 * scaleFactor),
                    Expanded(
                      child: Text(
                        'Share width people.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: scaleFactor * 26,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4 *scaleFactor,),
                Row(
                  
                  children: [
                    SizedBox(width: 5.0 * scaleFactor),
                    Expanded(
                      child: Text(
                        'The following users have access.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: scaleFactor * 17,
                        ),
                      ),
                    ),
                  ],
                ),
                //sección de contactos
                SizedBox(height: scaleFactor*20,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25 * scaleFactor,
                      backgroundColor: Colors.grey,
                      backgroundImage:const AssetImage('assets/images/persona1.jpg'),
            
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Candy Perreo',style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w600),),
                          Text('candy@correo.com',style: TextStyle(fontSize: scaleFactor * 16),),
                        ],
                      ),
                      
                    ),
                    const Spacer(),
                    OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        //color de fondo transparente
                        backgroundColor: Colors.transparent,
                        //shape
                        side: BorderSide.none,

                      ),
                      child: Text('Remove',style: TextStyle(fontSize: scaleFactor * 16,color: Colors.red),),
                      ),
                  ],
                ),
                //otromas 
               
                SizedBox(height: scaleFactor*10,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25 * scaleFactor,
                      backgroundColor: Colors.grey,
                      backgroundImage:const AssetImage('assets/images/persona2.jpg'),
            
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Drew Cano',style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w600),),
                          Text('cano@correo.com',style: TextStyle(fontSize: scaleFactor * 16),),
                        ],
                      ),
                      
                    ),
                    const Spacer(),
                    OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        //color de fondo transparente
                        backgroundColor: Colors.transparent,
                        //shape
                        side: BorderSide.none,

                      ),
                      child: Text('Remove',style: TextStyle(fontSize: scaleFactor * 16,color: Colors.red),),
                      ),
                  ],
                ),
                //y otro
                //sección de contactos
                SizedBox(height: scaleFactor*10,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25 * scaleFactor,
                      backgroundColor: Colors.grey,
                      backgroundImage:const AssetImage('assets/images/Python.png'),
            
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lana Stainer',style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w600),),
                          Text('lana@correo.com',style: TextStyle(fontSize: scaleFactor * 16),),
                        ],
                      ),
                      
                    ),
                    const Spacer(),
                    OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        //color de fondo transparente
                        backgroundColor: Colors.transparent,
                        //shape
                        side: BorderSide.none,

                      ),
                      child: Text('Remove',style: TextStyle(fontSize: scaleFactor * 16,color: Colors.red),),
                      ),
                  ],
                ),
                
                SizedBox(height: scaleFactor*30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Team member',style: TextStyle(fontSize: 20 * scaleFactor),),
                  ],
                ),
                SizedBox(height: scaleFactor*10,),
                Row(
                  children: [
                    
                    
                    Expanded(
                      child: Container(
                        width: 200, 
                        height: 50 * scaleFactor, 
                        padding: EdgeInsets.symmetric(horizontal: 12 * scaleFactor),
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey), 
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: null, 
                            hint: Row(
                              children: [
                                Icon(Icons.person , color: Colors.grey, size: iconSize * 1.4,), 
                                SizedBox(width: 18 * scaleFactor),
                                Text('Select team member', style: TextStyle(color: Colors.grey,fontSize: 20*scaleFactor)),
                              ],
                            ),
                            items: <String>['Candy', 'Drew', 'Lana'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style: TextStyle(fontSize: scaleFactor * 20),),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              
                            },
                            icon: Icon(Icons.arrow_drop_down, color: Colors.black, size: iconSize * 1.5,), 
                            style: TextStyle(color: Colors.black, fontSize: 16 * scaleFactor), 
                            dropdownColor: Colors.white, // Color del menú desplegable
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scaleFactor*30,),


                Row(
                  children: [
                    Expanded(
                      child:OutlinedButton(onPressed: (){
                        Navigator.pop(context);
                      },
                      
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.white,
                        minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
                        side:const BorderSide(color: Colors.grey),
                        ),
                       child: Text('Cancel', style: TextStyle(fontSize: scaleFactor * 18, color: Colors.black),
                       
                       ),
                       
                       ), 
                    ),
                    Padding(padding: 
              EdgeInsets.only(left: 5 * scaleFactor, right: 5 * scaleFactor),
              ),
                    Expanded(
                      child:OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                        minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
                        side:const BorderSide(color: Colors.grey),
                        ),
                       child: Text('Confirm', style: TextStyle(fontSize: scaleFactor * 18,color: Colors.white),
                       ),
                       ), 
                    ),
                  ],
            
                ),
                
                
              ],
            ),
          ),
            
            
        );

      }
      );
  }

//alert 5
showMyAlert5(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      int? selectedValue;
      final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            backgroundColor: Colors.white,
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10 * scaleFactor),
                  Row(
                    children: [
                      SizedBox(width: 10 * scaleFactor),
                      SizedBox(
                        width: 70 * scaleFactor,
                        height: 70 * scaleFactor,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF2E8FE),
                          ),
                          child: Expanded(
                            child: Icon(
                              Icons.payment,
                              color: const Color(0xFFC47CFF),
                              size: iconSize * 1.9,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10 * scaleFactor),
                  Row(
                    children: [
                      SizedBox(width: 8 * scaleFactor),
                      Expanded(
                        child: Text(
                          'Change your payment method.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: scaleFactor * 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4 * scaleFactor),
                  Row(
                    children: [
                      SizedBox(width: 5.0 * scaleFactor),
                      Expanded(
                        child: Text(
                          'Update your plan payment details.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: scaleFactor * 17,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: scaleFactor * 10),
                  Container(
                    //margen del contenedor
                    //margin: EdgeInsets.symmetric(horizontal: 20 * scaleFactor),
                   
                   decoration: BoxDecoration(
                    color:const Color(0xFFF8F4FF),
                    borderRadius: BorderRadius.all(Radius.circular(10 *scaleFactor)),
                    border: Border.all(
                      color: Colors.grey, 
                      width: 1.0, 
                    ),
                   ),
                    child: Padding(
                      padding: EdgeInsets.all(scaleFactor * 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor, right: 10 * scaleFactor),
                            child: Image(
                              image: const AssetImage('assets/images/c3.png'),
                              width: 30 * scaleFactor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Visa ending in 1234',
                                  style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Expiry 06/2024',
                                  style: TextStyle(fontSize: scaleFactor * 16, color: Colors.grey),
                                ),
                                Text(
                                  'Set a default',
                                  style: TextStyle(fontSize: scaleFactor * 16,color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 45 * scaleFactor),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide.none,
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.w600, fontSize: scaleFactor * 16),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor),
                            child: Transform.scale(
                              scale: 1.2 * scaleFactor, 
                              child: Radio<int>(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                                activeColor: Colors.deepPurple,
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: scaleFactor * 10),
                  Container(
                    //margen del contenedor
                    //margin: EdgeInsets.symmetric(horizontal: 20 * scaleFactor),
                   
                   decoration: BoxDecoration(
                    //color:const Color(0xFFF8F4FF),
                    borderRadius: BorderRadius.all(Radius.circular(10 *scaleFactor)),
                    border: Border.all(
                      color: Colors.grey, 
                      width: 1.0, 
                    ),
                   ),
                    child: Padding(
                      padding: EdgeInsets.all(scaleFactor * 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor, right: 10 * scaleFactor),
                            child: Image(
                              image: const AssetImage('assets/images/c2.png'),
                              width: 30 * scaleFactor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mastercard ',
                                  style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Expiry 06/2024',
                                  style: TextStyle(fontSize: scaleFactor * 16, color: Colors.grey),
                                ),
                                Text(
                                  'Set a default',
                                  style: TextStyle(fontSize: scaleFactor * 16,color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 45 * scaleFactor),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide.none,
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.w600, fontSize: scaleFactor * 16),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor),
                            child: Transform.scale(
                              scale: 1.2 * scaleFactor, 
                              child: Radio<int>(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                                activeColor: Colors.deepPurple,
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: scaleFactor * 10),
                  Container(
                    //margen del contenedor
                    //margin: EdgeInsets.symmetric(horizontal: 20 * scaleFactor),
                   
                   decoration: BoxDecoration(
                    //color:const Color(0xFFF8F4FF),
                    borderRadius: BorderRadius.all(Radius.circular(10 *scaleFactor)),
                    border: Border.all(
                      color: Colors.grey, 
                      width: 1.0, 
                    ),
                   ),
                    child: Padding(
                      padding: EdgeInsets.all(scaleFactor * 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor, right: 10 * scaleFactor),
                            child: Image(
                              image: const AssetImage('assets/images/c1.png'),
                              width: 30 * scaleFactor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Visa ending in 1234',
                                  style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Expiry 06/2024',
                                  style: TextStyle(fontSize: scaleFactor * 16, color: Colors.grey),
                                ),
                                Text(
                                  'Set a default',
                                  style: TextStyle(fontSize: scaleFactor * 16,color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 45 * scaleFactor),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide.none,
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.w600, fontSize: scaleFactor * 16),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40 * scaleFactor),
                            child: Transform.scale(
                              scale: 1.2 * scaleFactor, 
                              child: Radio<int>(
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                                activeColor: Colors.deepPurple,
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: scaleFactor * 30),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: Colors.white,
                            minimumSize: Size(1 * scaleFactor, 40 * scaleFactor),
                            side: const BorderSide(color: Colors.grey),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: scaleFactor * 18, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5 * scaleFactor, right: 5 * scaleFactor),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: Colors.deepPurple,
                            minimumSize: Size(1 * scaleFactor, 40 * scaleFactor),
                            side: const BorderSide(color: Colors.grey),
                          ),
                          child: Text(
                            'Confirm',
                            style: TextStyle(fontSize: scaleFactor * 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}


  // showMyAlert5(BuildContext context){
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context){
  //       int? _selectedValue;
  //       final Size screenSize = MediaQuery.of(context).size;
  //       final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
  //       double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
  //       return AlertDialog(
  //         backgroundColor: Colors.white,
  //         content: SizedBox(
  //           width: MediaQuery.of(context).size.width * 0.9, 

  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
                
  //               SizedBox(height: 10* scaleFactor,),
  //               Row(
  //                 children: [
  //                   SizedBox(width: 10*scaleFactor),
  //                   SizedBox(
  //                     //circulo
  //                     width: 70*scaleFactor,
  //                     height: 70*scaleFactor,
  //                     //shape circulo
  //                     child: Container(
  //                       decoration: const BoxDecoration(
  //                         shape: BoxShape.circle,
  //                         color: Color(0xFFF2E8FE),
  //                         //border: Border.all(color: Colors.blue, width: 2.0),
  //                         ),
                      
  //                     child: Expanded(
  //                       child: Icon(
  //                         Icons.payment ,
  //                         color:const Color(0xFFC47CFF),
  //                         size: iconSize * 1.9,
                          
  //                       ),
                        
  //                     ),
                      
  //                   ),
  //                   ),
  //                 ],
                  
  //               ),
  //               SizedBox(height: 10 * scaleFactor,),
  //               Row(
  //                 children: [
  //                   SizedBox(width: 8 * scaleFactor),
  //                   Expanded(
  //                     child: Text(
  //                       'Change your payment method.',
  //                       style: TextStyle(
  //                         color: Colors.black,
  //                         fontWeight: FontWeight.w500,
  //                         fontSize: scaleFactor * 18,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 4 *scaleFactor,),
  //               Row(
                  
  //                 children: [
  //                   SizedBox(width: 5.0 * scaleFactor),
  //                   Expanded(
  //                     child: Text(
  //                       'Update your plan payment details.',
  //                       style: TextStyle(
  //                         color: Colors.grey,
  //                         fontSize: scaleFactor * 17,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               //sección de contactos
  //               SizedBox(height: scaleFactor*20,),
  //               Row(
  //                 children: [
  //                    Padding(
  //                     //padding:const EdgeInsets.all(8.0),
  //                     padding: EdgeInsets.only(bottom: 40 * scaleFactor, right: 10*scaleFactor),
  //                     child: Image(
                        
  //                       image:const AssetImage('assets/images/c3.png'),
  //                       //tamaño
  //                       width: 30 * scaleFactor,

                                  
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(10.0),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text('Visa ending in 1234',style: TextStyle(fontSize: scaleFactor * 16, fontWeight: FontWeight.w600),),
  //                         Text('Expiry 06/2024',style: TextStyle(fontSize: scaleFactor * 16),),
  //                         Text('Set a default',style: TextStyle(fontSize: scaleFactor * 16),),
  //                       ],
  //                     ),
                      
  //                   ),
  //                   Padding(
  //                     padding: EdgeInsets.only(top: 45 * scaleFactor),
  //                     child: OutlinedButton(onPressed: (){},
  //                     style: OutlinedButton.styleFrom(
  //                       backgroundColor: Colors.transparent,
  //                       side: BorderSide.none,
  //                     ),
  //                      child: Text('edit', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: scaleFactor * 16),)),
  //                   ),
  //                   const Spacer(),
                    
  //                   Padding(
  //                       padding: EdgeInsets.only(bottom: 40 * scaleFactor),
  //                       child: Radio<int>(
  //                         value: 1,
  //                         groupValue: _selectedValue,
  //                         onChanged: (int? value) {
  //                           setState(() {
  //                             _selectedValue = value;
  //                           });
  //                         },
                          
  //                         activeColor: Colors.blue,
  //                         visualDensity: VisualDensity.compact,
  //                         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //                       ),
  //                     ),
  //                 ],
  //               ),
                
  //               SizedBox(height: scaleFactor*30,),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text('Team member',style: TextStyle(fontSize: 20 * scaleFactor),),
  //                 ],
  //               ),
  //               SizedBox(height: scaleFactor*10,),
  //               Row(
  //                 children: [
                    
                    
  //                   Expanded(
  //                     child: Container(
  //                       width: 200, 
  //                       height: 50 * scaleFactor, 
  //                       padding: EdgeInsets.symmetric(horizontal: 12 * scaleFactor),
  //                       decoration: BoxDecoration(
  //                         color: Colors.white, 
  //                         borderRadius: BorderRadius.circular(10),
  //                         border: Border.all(color: Colors.grey), 
  //                       ),
  //                       child: DropdownButtonHideUnderline(
  //                         child: DropdownButton<String>(
  //                           value: null, 
  //                           hint: Row(
  //                             children: [
  //                               Icon(Icons.person , color: Colors.grey, size: iconSize * 1.4,), 
  //                               SizedBox(width: 18 * scaleFactor),
  //                               Text('Select team member', style: TextStyle(color: Colors.grey,fontSize: 20*scaleFactor)),
  //                             ],
  //                           ),
  //                           items: <String>['Candy', 'Drew', 'Lana'].map((String value) {
  //                             return DropdownMenuItem<String>(
  //                               value: value,
  //                               child: Text(value,style: TextStyle(fontSize: scaleFactor * 20),),
  //                             );
  //                           }).toList(),
  //                           onChanged: (String? newValue) {
                              
  //                           },
  //                           icon: Icon(Icons.arrow_drop_down, color: Colors.black, size: iconSize * 1.5,), 
  //                           style: TextStyle(color: Colors.black, fontSize: 16 * scaleFactor), 
  //                           dropdownColor: Colors.white, // Color del menú desplegable
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: scaleFactor*30,),


  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child:OutlinedButton(onPressed: (){
  //                       Navigator.pop(context);
  //                     },
                      
  //                     style: OutlinedButton.styleFrom(
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
  //                       ),
  //                       backgroundColor: Colors.white,
  //                       minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
  //                       side:const BorderSide(color: Colors.grey),
  //                       ),
  //                      child: Text('Cancel', style: TextStyle(fontSize: scaleFactor * 18, color: Colors.black),
                       
  //                      ),
                       
  //                      ), 
  //                   ),
  //                   Padding(padding: 
  //             EdgeInsets.only(left: 5 * scaleFactor, right: 5 * scaleFactor),
  //             ),
  //                   Expanded(
  //                     child:OutlinedButton(onPressed: (){},
  //                     style: OutlinedButton.styleFrom(
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
  //                       ),
  //                       backgroundColor: Colors.deepPurple,
  //                       minimumSize:Size(1 * scaleFactor, 40 * scaleFactor),
  //                       side:const BorderSide(color: Colors.grey),
  //                       ),
  //                      child: Text('Confirm', style: TextStyle(fontSize: scaleFactor * 18,color: Colors.white),
  //                      ),
  //                      ), 
  //                   ),
  //                 ],
            
  //               ),
                
                
  //             ],
  //           ),
  //         ),
            
            
  //       );

  //     }
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    // double screenWidth = screenSize.width;
    // double screenHeight = screenSize.height;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    return Scaffold(
      //appbar
      appBar: AppBar(
        
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          iconSize: iconSize * 1.7,
          onPressed: () {
            Navigator.pop(context);
            },
            ),

        title:Text('Alert',style: TextStyle(
          fontSize: scaleFactor *26,
        ),),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: (){
                showMyAlert1(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ), 
              child:Text('Alert 1',style: TextStyle(
                fontSize: scaleFactor *25,
              ),
              ),
              
              
              ),
              
              ElevatedButton(onPressed: (){
                showMyAlert2(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ),  
              child:Text('Alert 2',style: TextStyle(
                fontSize: scaleFactor *25,
                color: Colors.white,
              ),),
              ),
              ElevatedButton(onPressed: (){
                showMyAlert3(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ),  
              child: Text('Alert 3',style: TextStyle(
                fontSize: scaleFactor *25,
              ),),
              ),
              ElevatedButton(onPressed: (){
                showMyAlert4(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ), 
              child:Text('Alert 4',style: TextStyle(
                fontSize: scaleFactor *25,
                color: Colors.white,
              ),),
              ),
              ElevatedButton(onPressed: (){
                showMyAlert5(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, 
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
              ),   
              child:Text('Alert 5',style: TextStyle(
                fontSize: scaleFactor *25,
              ),),
              ),
            ],
          ),
        ),
    );
  }

}