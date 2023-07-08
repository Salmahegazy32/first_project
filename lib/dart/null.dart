class TestNullable{
  //
  //

  late int num;
  int? id;
  String name ="";
  String? _address = null;
  late String age;

  TestNullable(this.age)
  ;
  void test (){
    _address ??= "Cairo";

    print(name.isEmpty);
    print(_address!.isEmpty);
  }
  String get address => _address ?? "Not value";

  set address(String value){
    _address = value;
  }
}