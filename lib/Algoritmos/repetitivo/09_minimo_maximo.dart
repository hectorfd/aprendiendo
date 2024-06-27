//hallar el minimo y el maximo de n numeros
import 'dart:io';
void main(List<String>args){
  int i, c, max=0, min=0;
  i = 1;
  print('cuantos numeros desea ingresar');
  var n = stdin.readLineSync();
  if(n != null){
    int cantidad = int.parse(n);
    while(i <= cantidad){
      print('Escribe el numero $i');
      var n2 = stdin.readLineSync();
      if(n2!=null){
        c = int.parse(n2);
        if(i==1){
          min = c;
          max = c;
        }else{
          if(c < min){
            min = c;
          }else if(c > max){
            max = c;
          }
        }
      }
      i++;
    }
    print('el valor minimo es $min');
    print('el valor maximo es $max');
  }
}
