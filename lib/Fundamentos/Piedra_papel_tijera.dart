import 'dart:io';
import 'dart:math';
void main(List<String>args){
  var userWins = 0;
  var computerWins = 0;
  var opciones =['piedra','papel','tijera'];
  while(true){
    print('elige piedra, papel, tijera ointroduce q para salir');
    var eleccionUsuario = stdin.readLineSync()!.toLowerCase();
    if(eleccionUsuario.toString()=='q'){
      break;
    }
    if(!opciones.contains(eleccionUsuario)){
      print('Error, elige piedra, papel o tijera');
      continue;
    }
    Random random = Random();
    var randomNum = random.nextInt(2);
    var eleccionOrdenador = opciones[randomNum];
    print('el ordenador ha elegido:$eleccionOrdenador');
    if(eleccionUsuario == 'piedra' && eleccionOrdenador == 'tijeras'){
      print('Has ganado');
      userWins++;
    }else if(eleccionUsuario == 'papel'&& eleccionOrdenador == 'piedra'){
      print('eres ganado');
      userWins++;
    }
  }
}