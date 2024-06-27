import 'dart:io';
//invertir numeros enteros de 3 digitos
void main(List<String>args){

  int num,unidad,decena,centena;
  print('ingrese un numero entero de 3 digitos');
  var n = stdin.readLineSync();
  if(n!=null){
    try{
      num = int.parse(n);
      if(num > 99 && num < 1000){
        unidad = num % 10;
        decena = ((num % 100) - unidad)~/10;
        centena = (num ~/ 100);
        print('$unidad - $decena - $centena');
      }else
        {
          print('$n no es un numero de 3 digitos');
        }
    }catch(e){
      print('Oh myGucci!!');
    }
  }
}