void main(List<String>list){
  List items = [2,5,1,'hola','mundo'];
  print(items.length);
  print(items.isEmpty);
  print(items.isNotEmpty);
  print(items.last);
  print(items.first);
  items.add('ctmr');
  print(items);
  print(items.elementAt(2));
  print(items.indexOf('hola'));
  print(items.contains(2));
  print(items.getRange(0, 2).toList());
  items.insert(0, 1234);
  print(items);
  items.insertAll(0, ['lalo','locura']);
  print(items);
  items.addAll(['mamadas',9]);
  print(items);

}