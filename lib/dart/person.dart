class Person {
  int _id = 0;
  String _name = "";
  String _age = "";

  Person(this._id, this._name, this._age);

  void printUserData() {

    print('person Id : $_id');
   print('person Name : $_name');
    print('person Age : $_age');
  }
  String getName () {
  return _name;
  }
  void setName (String name){
    if (name.length < 2) {
      print('Invalid name!');
      return;
    }
    _name = name;
  }
  String getName2() => _name ;

  void setName2 (String name) =>  _name = name;
  String get name => _name;

  set name (String value) {
    _name = value;
  }
  set name2(String value) => _name = value;

}