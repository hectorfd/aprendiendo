import 'dart:io';

void main(List<String> args) {
  stdout.write("¿Quieres jugar un juego? (introduce 'si' para continuar): ");
  var play = stdin.readLineSync();

  if (play?.toLowerCase() != 'si') {
    print('Juego terminado.');
    exit(0);
  }

  print('¡Juguemos! :D');
  var puntuacion = 0;

  stdout.write('¿Qué significan las siglas CPU?: ');
  var respuesta = stdin.readLineSync();

  if (respuesta?.toLowerCase() == 'central processing unit') {
    print('¡Correcto!');
    puntuacion++;
  } else {
    print('Incorrecto');
  }

  print('Puntuación final: $puntuacion');
}
