class Persona{
  String nombre;
  int edad;
  String dni;
  String? sexo;
  double? altura;
  double? peso;

  Persona({
    required this.nombre,
    required this.edad,
    required this.dni,
    this.sexo = '',
    this.altura = 0,
    this.peso = 0,
  });

  Persona.basico({
    required this.nombre,
    required this.edad,
    this.sexo,
  }): dni = '',
      peso=0,
      altura = 0;

  int calcularIMC(){
      double imc = peso! / (altura! * altura!);
      if (imc < 20) {
        return -1;
      } else if (imc >= 20 && imc <= 25) {
        return 0;
      } else {
        return 1;
      }
  }

  bool mayorEdad() {
    if (edad > 17) {
      return true;
    } else{
      return false;
    }
  }

  String comprobarSexo(){
    if(sexo == 'H'){
      return 'es varon';
    }else if(sexo=='M'){
      return 'es mujer';
    }else{
      return 'H';
    }
  }

}

void main(List<String>args){
 var persona1 = Persona(nombre: 'Dexter', edad: 28, dni: '73369445');
 print(persona1.nombre);
 print(persona1.edad);
 print(persona1.mayorEdad());
 print(persona1.comprobarSexo());
}