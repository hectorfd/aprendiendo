//Vamos a crear una clase llamada Persona.
// Sus atributos son: nombre, edad y DNI.
// Construye los siguientes métodos para la clase:
// Un constructor
// Los setters y getters para cada uno de los atributos.
// mostrar(): Muestra los datos de la persona.
// esMayorDeEdad(): Devuelve un valor lógico indicando si es mayor de edad.
class Persona{
  String nombre;
  int edad;
  int dni;
  Persona(this.nombre, this.edad, this.dni);

  String get miNombre{
    return nombre;
  }
  set miNombre(String nombrex){
    nombre = nombrex;
  }
  mostrar(){
    print( '''
    nombre: $nombre,
    DNI: $dni,
    Edad: $edad
    ''');
  }

  void mayorEdad(){
    edad >=18 ? print(true):print(false);
}
}

void main(List<String>args){
  var persona1 = Persona('Jose', 50, 87654321);
  persona1.mostrar();
  print('Es Mayor? :');
  persona1.mayorEdad();
}