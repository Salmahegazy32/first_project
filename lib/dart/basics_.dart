import 'dart:io';

void main () {
  print('hello salma');
  print('hello lesh3');

  // String , int , double , bool
  // DataType variableName = value

  String name = "salma";
  int age = 20;
  bool isMarried = false;
  print('name : $name');
  print('Age : $age');
  print('Is Married : $isMarried');

  //files , package (Folder) => small_letters_with_under_scores
  // Class => ClassName , SelectUserLocationScreen
  // variables , functions => camelCase , getUserLocation
  // start with => letters , underscore , dollar sign

  // Operators
  // + - / * %
  // +=  -= /= *= %=
  // < > <= >=
  // == !=
  // ++ --
  // ! || &&
  // ? : ( simple if )
  // ! ?? ??=
  // is is!

  double num = 10 ;
  num += 5 ;
  num *= 5 ;
  print(num);

  print('amir' == "Amir");
  print(10 != 5);

  // ( condition ) ? true : false
  print(5 > 4 ? "five" : "four");

  print(name is String);
  print(age is! bool);

  // if ( condition ) { true } else { false }

  if ("Ahmed" == "ahmed") {
    print('Valid');
  } else{
    print('NotValid');
    }
  // Requested, Accepted, Rejected, OnTheWay, Finished, Refused, Canceled
  String orderStatues = "Finished";

  if (orderStatues == "Requested") {
    print(orderStatues);
  } else if (orderStatues == "Accepted"){
    print(orderStatues);
  } else if (orderStatues == "Rejected") {
    print(orderStatues);
  } else if (orderStatues == "Finished") {
    print(orderStatues);
  } else {
    print('Order Statues Unknown');
  }

  }











