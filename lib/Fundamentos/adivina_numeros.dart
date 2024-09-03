import 'dart:math';
import 'dart:io';

void main(List<String>args){
  print('Introduce un numero maximo');
  var valorMax = stdin.readLineSync();
  var valorMaxInt;
  if(valorMax == null){
    print('error, intentelo de nuevo');
    exit(0);
  }
  if(int.tryParse(valorMax)!=null){
    print('introduce un numero mayor que 0 la proxima vez');
    exit(0);
  }else{
    print('introduce un numero la proxima vez');
    exit(0);
  }

  Random random = Random();
  var numeroAleatorio = random.nextInt(valorMaxInt);
  var numeroIntentos;
  while(true){
    numeroIntentos++;
    var numeroIntroducido = stdin.readLineSync();
  }

}