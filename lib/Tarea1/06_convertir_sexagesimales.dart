import 'dart:io';
//6. Hacer un programa que calcule el ángulo en grados centesimales
//   y radiales si tenemos grados sexagesimales.

void main(List<String>args){
  double  centesimales, radiales;
  print('Ingrese el valor del angulo sexadecimal');
  var n = stdin.readLineSync();


  if(n != null){
    try{
      double sex = double.parse(n);
      double centesimales = sex * (10 / 9);
      double radiales = sex * (3.1416 / 180);

      print('La conversion a centecimales =  ${centesimales.toStringAsFixed(2)}');
      print('La conversion a radiales =  ${radiales.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}