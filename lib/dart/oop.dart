// Class , Object
// Class => Container ( variable , functions )
// Object => Copy of class

// DataType variableName = value;
// DataType functionName( parameters => variable ) {body}
// void functionName( parameters => variable ) {body}
// variable => parameters >> if write in () of function #######

// class ClassName { class body => variable , functions }

// Call Object =>> ClassName objectName = ClassName();
// var objectName = ClassName();
// final objectName = ClassName();
// const objectName = ClassName();
void main() {
  // to show parameters => Ctrl + p
  var user1 = User(1,"Ali","010","Cairo");

  User user2 = User(2, "mahmoud", "010", "alex");
}

class User {
  int id = 0;
  String name = "";
  String phone = "";
  String city = "";


  User(this.id, this.name, this.phone, this.city){
    print('New Object');
    printUserData();
  }
  // Constructor => function => create new object => call ######
  // Constructor => ClassName ######
  // Constructor => Has no return data type ######


   void printUserData(){
     print("User Id : $id");
     print("User Name : $name");
     print("User phone : $phone");
     print("User City : $city");
  }


}