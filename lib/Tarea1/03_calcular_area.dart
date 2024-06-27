import 'dart:io';
// 3. Hacer un programa para calcular el área y la longitud
// de un círculo de cualquier radio requerido.
//formulas A=π×(r*r) y C=2×π×r

void main(List<String>args){
  double  pi, area, longitud;
  print('Ingrese el radio del Circulo');
  var r = stdin.readLineSync();
  if(r != null){
    try{
      double radio = double.parse(r);

      area = 3.1416 * (radio * radio) ;
      longitud = 2 * 3.1416 * radio;

      print('El Area del circulo con radio: $radio es = ${area.toStringAsFixed(2)}');
      print('La logitud del circulo con radio: $radio es = ${longitud.toStringAsFixed(2)}');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}
