//variables
void main(List<String>arguments){
  const nombre = 'Hector';
  const edad = 30;
  print('hola soy $nombre y tengo $edad años');
  print(nombre.runtimeType);
  print('hola el tipo de dato es ${edad.runtimeType}');
  
  //definir el tipo de dato 
  String name = 'Fed';
  int dni = 73369445;
  double estatura = 1.60;
  bool macho = true;
  print('DNI: $dni, Nombre: $name, Mide: $estatura, Varón: $macho');
  
  // para variables que no cambian
  final double igv = 0.18;
  print(100 * igv);
  String num = '''
    uno
    dos
    tres
  ''';

print(num);
//convertir a string
double peso = 72.543;
String pesoString = peso.toString();
print(pesoString);
// para el string de decimales de tipo string
String pesoDecimales = peso.toStringAsFixed(2);
print (pesoDecimales);
//para verificar si contiene una palabra
String ref = 'perro que ladra no muerde';
print(ref.contains('perro'));
//método split para dividir texto ideal para dividir el nombre del dominio 
String email = 'hector@gmail.com';
print(email.split('@')[1]);//con [1] obtengo la posición del array en 1
print('la posición del array ${email.split('@')[0]}');
//para saber si inicia con un tipo de texto en concreto
print(ref.startsWith('p'));
//para saber en que termina si es falso o verdadero
print(ref.endsWith('e'));
//para la posicion de la cadena de caracteres
print(email.indexOf('@'));
//para cortar el texto y mostrar desde una posición definida
//e incluso podemos añadir 
print(email.substring(7, email.indexOf('.')));

}

