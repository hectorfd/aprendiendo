import 'dart:io';
// 7. Hacer un programa que tome temperatura asignada en una variable en
//    grados Celsius y diga a cuantos grados equivale en grados Fahrenheit y Kelvin.



void main(List<String>args){
  double  farenheit, kelvin;
  print('Ingrese grados celcius');
  var n = stdin.readLineSync();

  if(n != null){
    try{
      double c = double.parse(n);
      double farenheit = c * (9 / 5) + 32;
      double kelvin = c + 273.15;

      print('Grados Celcius: $c = Grados Farenheit: ${farenheit.toStringAsFixed(2)}');
      print('Grados Celcius: $c = Grados kelvin:  ${kelvin.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}