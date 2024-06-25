void main(List<String> args) {
  //a esto llama mapa dart bien raro
  var mapa ={
    'nombre':'Hector',
    'edad': 30,
    'email':'hector@gmail.com',
    'soltero':true,
  };
  mapa['ciudad']='Cusco';
  mapa['nombre']='Hector Ferro Dávalos';
  print('$mapa');
  print(mapa.length);
  //poner una lista a un mapa
  var lista = ['A','B','C'];
  print(lista.asMap());
}