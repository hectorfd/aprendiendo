void main(List<String>args){
  print('Hola mundo desde el main');
  int miEdad = edad();
  print(miEdad);
  int mientero = entero();
  print(mientero);
  double area = calcularArea(2.3, 8);
  print('el area es :$area');
}

int edad(){
  int edad = 30;
  return edad;
}

int entero(){
  return 10;
}
//funciones
double calcularArea(double ladoA, double ladoB){
  double area = ladoA * ladoB;
  return area;
}