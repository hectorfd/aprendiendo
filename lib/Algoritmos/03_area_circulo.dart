//calcular el area del circulo
import 'dart:io';
void main(List<String>args){
  print('ingrese el valor del radio');
  var n = stdin.readLineSync();
  if(n!=null){
    try{
      double radio = double.parse(n);
      double area = 3.1415 * radio * radio;
      print('el area es; $area');
    }catch(e){
      print('errar es humano');
    }
  }
}