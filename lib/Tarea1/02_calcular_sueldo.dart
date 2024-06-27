import 'dart:io';
//2. Hacer un programa para que lea el sueldo de tres empleados
//   y aplíqueles un aumento del 10, 12 y 15% respectivamente.
//   Escriba el sueldo final.
void main(List<String>args){
  double  sueldo1, sueldo2, sueldo3;
  print('Ingrese el primer Sueldo');
  var s1 = stdin.readLineSync();
  print('Ingrese el segundo Sueldo');
  var s2 = stdin.readLineSync();
  print('Ingrese el tercer Sueldo');
  var s3 = stdin.readLineSync();

  if(s1 != null && s2 != null && s3 != null){
    try{
      double n1 = double.parse(s1);
      double n2 = double.parse(s2);
      double n3 = double.parse(s3);
      sueldo1 = (n1 * 0.10) + n1;
      sueldo2 = (n2 * 0.12) + n2;
      sueldo3 = (n3 * 0.15) + n3;

      print('El primer sueldo S./$n1 + tiene un aumento de 10%: ${sueldo1.toStringAsFixed(2)}');
      print('El segundo sueldo S./$n2 + tiene un aumento de 12%: ${sueldo2.toStringAsFixed(2)}');
      print('El tercer sueldo S./$n3 + tiene un aumento de 15%: ${sueldo3.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}

