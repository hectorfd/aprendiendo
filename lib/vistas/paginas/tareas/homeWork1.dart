import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homework1 extends StatefulWidget{
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  //Backend
  final  TextEditingController _controlador1 = TextEditingController();
  final  TextEditingController _controlador2 = TextEditingController();
  String _resultado = '';

  void _calcular(){
    final double num1 = double.tryParse(_controlador1.text)??0;
    final double num2 = double.tryParse(_controlador2.text)??0;
    final double suma = num1 + num2;
    final double diferencia = num1 - num2;
    final double producto = num1 * num2;

    setState(() {
      _resultado = 'La suma es: $suma\nLa diferencia es: $diferencia\nLa multiplicación es: $producto';
    });

  }
  //Frontend
  @override
  Widget build(BuildContext context) {
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: scaleFactor * 50,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, size: iconSize * 1.6,color: Colors.white,),),
        title: Text('Calcular (+ - *)', style: TextStyle(fontSize:scaleFactor * 22 ,color: Colors.white)),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(scaleFactor * 20),
        child: Column(
          children: [
              ListTile(
                leading: Text('1)', style: GoogleFonts.abel(fontSize: 22 * scaleFactor),),
                title: Text('Hacer un programa para calcular la suma, diferencia y producto de dos números.', style: GoogleFonts.aBeeZee(fontSize: scaleFactor * 22),),
              ),
              SizedBox(height: scaleFactor * 20,),
              Center(
                child: SizedBox(
                  width: 200 * scaleFactor,
                  child: TextField(
                    controller: _controlador1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Ingrese Numero 1',
                      labelStyle: GoogleFonts.abel(fontSize: scaleFactor * 25),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      contentPadding: EdgeInsets.symmetric(vertical: scaleFactor * 5),
                    ),
                    style: TextStyle(fontSize: scaleFactor * 34),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(height: scaleFactor * 20,),
              Center(
                child: SizedBox(
                  width: 200 * scaleFactor,
                  child: TextField(
                    controller: _controlador2,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Ingrese Numero 2',
                      labelStyle: GoogleFonts.abel(fontSize: scaleFactor * 25,),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      contentPadding: EdgeInsets.symmetric(vertical: scaleFactor * 5),
                    ),
                    style: TextStyle(fontSize: scaleFactor * 34),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(height: scaleFactor * 20,),
              Center(
                child: ElevatedButton(
                  onPressed: _calcular,
                  //estilo
                  style: ElevatedButton.styleFrom(
                    
                    minimumSize: Size(200 * scaleFactor, 50 * scaleFactor),
                    
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5 * scaleFactor),
                      ),
                  ),
                    child: Text('Calcular', style: GoogleFonts.aBeeZee(fontSize: scaleFactor * 22, color: Colors.white),),
                    ),
                    ),
              SizedBox(height: scaleFactor * 20,),
              Text(_resultado, style: GoogleFonts.aBeeZee(fontSize: scaleFactor * 22),textAlign: TextAlign.center,)
          ],
          ),
      ),
    );
  }
}