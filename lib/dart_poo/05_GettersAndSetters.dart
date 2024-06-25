//mi fabrica de objetos
class Electrodomesticos{
  //mis atributos
  String nombre;
  String marca;
  String? serie;
  String? descripcion;
  int cantidad;
  //mi constructor
  Electrodomesticos({
    required this.nombre,
    required this.marca,
    this.serie,
    this.descripcion,
    this.cantidad = 1
  });
  //Getters and Setters
  String get miNombre{
    return nombre;
  }
  set miNombre(String nombrex){
    nombre = nombrex;
  }
  String get miMarca{
    return marca;
  }
  set miMarca(String marcax){
    marca = marcax;
  }
  String get miSerie{
    return serie?? 'no hay serie causa gaaa';
 }
 set miSerie(String seriex){
    serie = seriex;
 }
 String get miDescripcion{
    return descripcion??'Manan canchu';
 }
 set miDescripcion(String des2){
    descripcion = des2;
 }
 int get miCantidad{
    return cantidad;
 }
 set miCantidad(int cantidadx){
    cantidad = cantidadx;
 }


  // mis metodos
void encender(){
  print('Electrodomestico $nombre esta encendido');
}
String obtenerSerie(){
  return serie?? 'no hay series disponibles';
}
@override
  String imprimir(){
  return '''
  nombre: $nombre
  marca: $marca
  serie: $serie
  descripción: $descripcion
  cantidad: $cantidad
  ''';
}

}
void main(){
  Electrodomesticos ele1 = Electrodomesticos(nombre: 'Laptop', marca: 'Lenovo');
  print(ele1.imprimir());
  ele1.miSerie = 'hfd-1234';
  ele1.miDescripcion = '16gb ram, intel core I7, 500gb HDD';
  ele1.miCantidad = 20;
  print(ele1.imprimir());
}