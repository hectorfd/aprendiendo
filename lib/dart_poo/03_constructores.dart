//constructures
//molde
class Insecto{
  //atributos
  String nombre;
  String? tipo;
  String? habitad;
  //constructores
  //Insecto(this.nombre,this.habitad,this.tipo);
  Insecto({ required this.nombre,this.habitad,this.tipo});
  Insecto.volador({required this.nombre, this.tipo});
  Insecto.acuatico({required this.nombre, this.habitad});

  @override
  String toString(){
    return '''
    nombre: $nombre 
    habitad: $habitad 
    tipo: $tipo
    ''';
  }
}
void main(List<String>args){
  Insecto insecto = Insecto(nombre: 'oruga');
  print(insecto);

}