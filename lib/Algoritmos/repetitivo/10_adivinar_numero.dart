import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int c = 0, secreto = Random().nextInt(100) + 1;
  bool adivinado = false;

  print('Adivina el número secreto (entre 1 y 100). Tienes 10 intentos.');

  for (var i = 1; i <= 10; i++) {
    print('Intento $i: Ingrese un número:');
    var n = stdin.readLineSync();

    if (n != null) {
      int num = int.parse(n);

      if (num == secreto) {
        print('¡Felicidades! Has adivinado el número en $i intento(s).');
        adivinado = true;
        break;
      } else {
        num > secreto ? print('El número ingresado es mayor.') : print('El número ingresado es menor.');
        c++;
      }
    } else {
      print('Por favor, ingrese un número válido.');
    }
  }

  if (!adivinado) {
    print('Lo siento, no has adivinado el número. El número secreto era $secreto.');
  }
}
