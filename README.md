# estudo_dart_extension
Estudos de dart extensions

```dart
extension TotalRecords on List {
  static final _totalRecords = Expando<int>();
  int get totalRecords => _totalRecords[this];
  set totalRecords(int value) {
    _totalRecords[this] = value;
  }
}

enum status {loading, success, error}

extension statusExtension on status {
  static final _value = Expando<Object>();
  Object get value => _value[this];
  set value(Object v) {
    _value[this] = v;
  }
  
  /*static var _value;
   get value => _value;
  set value( v) {
    _value = v;
  }*/
  
  String asString() => toString().split('.').last;
}


void main() {
var lista1 = [Pessoa(nome:"isaque"),Pessoa(nome:"fulano")];
  lista1.totalRecords = 5;
var lista2 = [Pessoa(nome:"a"),Pessoa(nome:"b"),Pessoa(nome:"b")];
  lista2.totalRecords = 20;  
  var lista3 = <Pessoa>[Pessoa(nome:"a"),Pessoa(nome:"b"),Pessoa(nome:"b"),Pessoa(nome:"c")];
   lista3.totalRecords = 50;    
  print(lista1.totalRecords);
  print(lista2.totalRecords);
   print(lista3.totalRecords);

  
  var status1 = status.loading;
  status1.value = 'wdeasdasd';
  var status2 = status.success;
  status2.value = 'isaque';
   print(status1.value);//wdeasdasd
     print(status2.value);//isaque
  
}


class Pessoa{
  var nome ='';  
  Pessoa({this.nome});
}

```
