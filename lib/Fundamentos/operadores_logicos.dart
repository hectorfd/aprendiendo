void main(List<String>args){
  bool casado = false;
  bool soltero = true;
  bool verdad = casado != soltero && casado == false || soltero == false;
  print(verdad);

}