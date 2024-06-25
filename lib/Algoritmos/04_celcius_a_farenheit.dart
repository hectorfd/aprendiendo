import 'dart:io';
//convetir de celcius a farenheit
void main(List<String>args){
  print('ingrese grados celcius');
  var n = stdin.readLineSync();
  if(n!=null){
    double celcius = double.parse(n);
    double farenheit = (celcius * 1.8) + 32;
    print('los grados farenheit: $farenheit');
  }
}