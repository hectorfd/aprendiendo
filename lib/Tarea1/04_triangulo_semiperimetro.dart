import 'dart:io';
import 'dart:math';
//4. Hacer un programa que calcule el área de un triángulo
//   en función de su semiperímetro
void main(List<String>args){
  double  ladoA, ladoB, ladoC, s;
  print('Ingrese el Lado A del triangulo');
  var a = stdin.readLineSync();
  print('Ingrese el Lado B del triangulo');
  var b = stdin.readLineSync();
  print('Ingrese el Lado C del triangulo');
  var c = stdin.readLineSync();
  print('Ingrese el semiperimetro');
  var semiperimetro = stdin.readLineSync();

  if(a != null && b != null && c != null && semiperimetro != null){
    try{
      double ladoA = double.parse(a);
      double ladoB = double.parse(b);
      double ladoC = double.parse(c);
      double s = double.parse(semiperimetro);
      if(ladoA>s || ladoB>s || ladoC>s){
        print('la longitud no debe ser menor al semiperimetro');
        exit(1);
      }
      double area = sqrt(s*(s-ladoA)*(s-ladoB)*(s-ladoC));

      print('El Area es: ${area.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}