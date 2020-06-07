extension TotalRecords on List {
  static final _totalRecords = Expando<int>();
  int get totalRecords => _totalRecords[this];
  set totalRecords(int value) {
    _totalRecords[this] = value;
  }
}


void main() {
var lista1 = [Pessoa(nome:"isaque"),Pessoa(nome:"fulano")];
  lista1.totalRecords = 5;
var lista2 = [Pessoa(nome:"a"),Pessoa(nome:"b"),Pessoa(nome:"b")];
   lista2.totalRecords = 20;
  
  var lista3 = [Pessoa(nome:"a"),Pessoa(nome:"b"),Pessoa(nome:"b"),Pessoa(nome:"c")];
   lista3.totalRecords = 50;
  
  
  print(lista1.totalRecords);
  print(lista2.totalRecords);
   print(lista3.totalRecords);
}


class Pessoa{
  var nome ='';  
  Pessoa({this.nome});
}
