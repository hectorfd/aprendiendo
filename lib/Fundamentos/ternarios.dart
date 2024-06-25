void main(List<String> args) {
  int edad = 18;
  edad>=18 ? print('eres mayor de edad'):print('eres menor');

  bool casado = false;
  casado ? print('eres casado'): print('que viva la soltería');

  var list = [1, null,2];
  list[1]?? print('a tiene un valor nulo en la posición 1'); 
}