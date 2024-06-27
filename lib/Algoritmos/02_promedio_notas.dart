//calcular promedio de 3 notas de n alumnos
import 'dart:io';
void main(List<String>args){
  print('ingrese la cantidad de alumnos');
  var n = stdin.readLineSync();
  if(n!=null){
    int alumnos = int.parse(n);
    int contador = 1;
    while(contador <= alumnos){
        print('ingrese las notas del alumno $contador:');
        print('ingrese nota 1');

        var n1 = stdin.readLineSync();
        print('ingrese nota 2');
        var n2 = stdin.readLineSync();
        print('ingrese nota 3');
        var n3 = stdin.readLineSync();
        if(n1!=null && n2!=null && n3!=null){
          try {
            double nota1 = double.parse(n1);
            double nota2 = double.parse(n2);
            double nota3 = double.parse(n3);
            double promedio = (nota1 + nota2 + nota3) / 3;

            print('El promedio del alumno $contador es: $promedio');
          } catch (e) {
            print('Por favor, ingrese números válidos para las notas.');
          }
        }
        contador++;
    }
  }else{
    print('si se parece a java muy chinchoso este lenguaje');
  }

}