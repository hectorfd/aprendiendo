//definir si un año es bisiesto o no
import 'dart:io';
void main(List<String>args){
  print('Escriba un año para verificar si es bisiesto o no:');
  var n1 = stdin.readLineSync();
  if(n1!=null){
    try{
      int anio = int.parse(n1);
      if(anio % 4 == 0 && anio % 100 != 0 || anio % 400 == 0){
        print('$anio: es un año bisiesto');
      }else{
        print('$anio: es un año cualquiera');
      }
    }catch(e){
      print('no se que chichas pusiste');
    }

  }else{
    print('usted no ingreso nada maldito');
  }


}