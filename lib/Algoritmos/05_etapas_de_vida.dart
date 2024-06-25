import 'dart:io';
void main(List<String>args){
  print('ingrese la edad');
  var n = stdin.readLineSync();
  if(n!=null){
    try{
      int edad = int.parse(n);
      edad > 130?
      print('no eres humano'):
      edad<=10?
      print('Niño'):
      edad >10 && edad <=14?
      print('Puberto'):
      edad>=15 && edad<=18?
      print('Adolescente'):
      edad>=19 && edad<=25?
      print('Ahora no Joven'):
      edad>26 && edad<= 65?
      print('Adulto'):
      edad>65?
      print('Anciano'):
      print('nose que eres');
    }catch(e){
      print('Oh maiGucci!! xd');
    }
  }
}