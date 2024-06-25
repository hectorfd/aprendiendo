//Hacer un programa que calcule la distancia entre dos puntos coordenados conocidos
import 'dart:io';
import 'dart:math';

void main(List<String>args){
  double  x1, x2, y1, y2;
  print('Ingrese el valor del eje x1');
  var a = stdin.readLineSync();
  print('Ingrese el valor del eje x2');
  var b = stdin.readLineSync();
  print('Ingrese el valor del eje y1');
  var c = stdin.readLineSync();
  print('Ingrese el valor del eje y2');
  var d = stdin.readLineSync();

  if(a != null && b != null && c != null && d != null){
    try{
      double x1 = double.parse(a);
      double x2 = double.parse(b);
      double y1 = double.parse(c);
      double y2 = double.parse(d);

      double distancia = sqrt(pow(x2-x1, 2) + pow(y2-y1, 2));

      print('La distancia es: ${distancia.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}