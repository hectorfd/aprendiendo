void main(List<String>args){
 print(Colores.values);
 for (var item in Colores.values) {
   //print(item.index);
   print(item.name);
 }
}

enum Colores{
  rojo,
  azul,
  amarillo
}