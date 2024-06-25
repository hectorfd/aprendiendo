import 'dart:io';
import 'dart:math';
void main(List<String>args){
  var user_wins = 0;
  var computer_wins = 0;
  var opciones =['piedra','papel','tijera'];
  while(true){
    print('elige piedra, papel, tijera ointroduce q para salir');
    var eleccion_usuario = stdin.readLineSync()!.toLowerCase();
    if(eleccion_usuario.toString()=='q'){
      break;
    }
    if(!opciones.contains(eleccion_usuario)){
      print('Error, elige piedra, papel o tijera');
      continue;
    }
    Random random = Random();
    var random_num = random.nextInt(2);
    var eleccion_ordenador = opciones[random_num];
    print('el ordenador ha elegido:$eleccion_ordenador');
    if(eleccion_usuario == 'piedra' && eleccion_ordenador == 'tijeras'){
      print('Has ganado');
      user_wins++;
    }else if(eleccion_usuario == 'papel'&& eleccion_ordenador == 'piedra'){
      print('eres ganado');
      user_wins++;
    }
  }
}