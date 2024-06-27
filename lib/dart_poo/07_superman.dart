void main(){
  Perro toby = Perro(peso:20, nombrex: 'Berlin',tipox: 'Mamifero');
  print(toby.nombre);
}

//clase padre
class Animal{
  String? nombre;
  String? tipo;
  Animal({this.nombre, this.tipo});
}
//clase hija

class Perro extends Animal{
  double? peso;
  Perro({this.peso, nombrex, tipox}): super(nombre: nombrex,tipo: tipox);
}