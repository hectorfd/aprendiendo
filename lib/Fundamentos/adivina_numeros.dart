import 'dart:math';
import 'dart:io';

void main(List<String>args){
  print('Introduce un numero maximo');
  var valor_max = stdin.readLineSync();
  var valor_max_int;
  if(valor_max == null){
    print('error, intentelo de nuevo');
    exit(0);
  }
  if(int.tryParse(valor_max)!=null){
    print('introduce un numero mayor que 0 la proxima vez');
    exit(0);
  }else{
    print('introduce un numero la proxima vez');
    exit(0);
  }

  Random random = Random();
  var numero_aleatorio = random.nextInt(valor_max_int);
  var numero_intentos;
  while(true){
    numero_intentos++;
    var numero_introducido = stdin.readLineSync();
  }

}