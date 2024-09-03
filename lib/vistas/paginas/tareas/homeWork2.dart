import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homework2 extends StatefulWidget{
  const Homework2({super.key});

  @override
  State<Homework2> createState() => _Homework2State();
}

class _Homework2State extends State<Homework2> {
  //backend
  final TextEditingController _controlador1 = TextEditingController();
  final TextEditingController _controlador2 = TextEditingController();
  final TextEditingController _controlador3 = TextEditingController();

  String _resultado = '';

  void _calcular(){
    final double sueldo1 = double.tryParse(_controlador1.text)??0;
    final double sueldo2 = double.tryParse(_controlador2.text)??0;
    final double sueldo3 = double.tryParse(_controlador3.text)??0;
    final double sueldoEmpleado1 = (sueldo1 * 0.10) + sueldo1;
    final double sueldoEmpleado2 = (sueldo2 * 0.12) + sueldo2;
    final double sueldoEmpleado3 = (sueldo3 * 0.15) + sueldo3;
    setState(() {
        _resultado = 'Sueldo Empleado 1: $sueldoEmpleado1\nSueldo Empleado 2: $sueldoEmpleado2\nSueldo Empleado 3: $sueldoEmpleado3';
      });
      }  //frontend
  @override
  Widget build(BuildContext context) {
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        toolbarHeight: scaleFactor * 50,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, size: iconSize * 1.6,color: Colors.white,)),
        title: Text('calcular Sueldo', style: TextStyle(fontSize: scaleFactor * 22, color: Colors.white),
        
        ),
        centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ListTile(
                  leading: Text('2)', style: TextStyle(fontSize: scaleFactor * 22),),
                  title: Text('Hacer un programa para que lea el sueldo de tres empleados y aplíqueles un aumento del 10, 12 y 15% respectivamente.Escriba el sueldo final.',
                        style: GoogleFonts.aBeeZee(fontSize: scaleFactor * 22),),
                  
                ),
                SizedBox(height: scaleFactor * 20,),
                //sueldo 1
                Center(
                  child: SizedBox(
                    width: scaleFactor * 300,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controlador1,
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        labelText: 'S./ Sueldo Empleado 1',
                        labelStyle: TextStyle(fontSize: scaleFactor * 22),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black87, width: 2.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: scaleFactor * 30),
                        ),
                        ),     
                  ),
                
                SizedBox(height: scaleFactor * 20,),
                //sueldo 2
                Center(
                  child: SizedBox(
                    width: scaleFactor * 300,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controlador2,
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        labelText: 'S./ Sueldo Empleado 2',
                        labelStyle: TextStyle(fontSize: scaleFactor * 22),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black87, width: 2.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: scaleFactor * 30),
                        ),
                        ),     
                  ),
                SizedBox(height: scaleFactor * 20,),
                //sueldo 3
                Center(
                  child: SizedBox(
                    width: scaleFactor * 300,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controlador3,
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        labelText: 'S./ Sueldo Empleado 3',
                        labelStyle: TextStyle(fontSize: scaleFactor * 22),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black87, width: 2.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: scaleFactor * 30),
                        ),
                        ),     
                  ),
                  //botón de calcular
                  SizedBox(height: scaleFactor * 20,),
                  ElevatedButton(
                    onPressed: _calcular,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200 * scaleFactor, 50 * scaleFactor),
                      backgroundColor:Colors.amber,
                      //shape
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //side: BorderSide(color: Colors.black87, width: 2.0),

                    ),
                    child: Text('Calcular', style: TextStyle(fontSize: scaleFactor * 26, color: Colors.white)),
                  ),
                //resultado
                SizedBox(height: scaleFactor * 20,),
                Text(_resultado, style: GoogleFonts.aBeeZee(fontSize: scaleFactor * 22),),
              ],
              
              
            ),
            ),
        ),
    );
  }
}