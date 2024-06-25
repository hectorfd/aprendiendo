/*import 'dart:io';
void main(List<String>args){
  //machine of repetition
  print('dime algo');
  while(true){
    String? linea = stdin.readLineSync();
    if(linea.toString().startsWith('#')){
      continue;
    }else if(linea == 'fin'){
      break;
    }
    print('loop ${linea.toString()}');

  }
}*/
import 'dart:io';
void main(List<String> args){
  print('is this a pen');
  while(true){
    String? Linea = stdin.readLineSync();
    if(Linea.toString().startsWith('#')){
      continue;
    }else if(Linea == 'is a mouse'){
      break;
    }
    print('what is it');
  }
print('todo se tmr');
}