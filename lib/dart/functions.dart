void main (){
  printMyData();
  print(getWelcomeMessage());
  print(getWelcomeMessage2("ali"));
  print(getWelcomeMessage3("mahmoud", "ibrahim"));
  print(getWelcomeMessage4("ahmed","said"));
  print(getWelcomeMessage4("ahmed"));
  print(getWelcomeMessage5(firstName : "ali ",lastName : "said"));

}

void printMyData () {
  print('hello');
  print('welcome');
}

// DataType => String , int , double , bool
// DataType functionName ( parameters => variables ) { body }
// void functionName ( parameters => variables ) { body }
// void => mesh ha -raga3 DataType

// to show function parameters => ctrl + p


String getWelcomeMessage (){
  return "welcome salma";
}
String getWelcomeMessage2 (String name){
  return "welcome Mr. $name";
}

// Default Parameters => required , optional
// Named Parameters => required , optional

String getWelcomeMessage3 (String firstName, String lastName){
  return "welcome Mr. $firstName $lastName";
}
String getWelcomeMessage4 (String firstName, [String lastName = ""]){
  return "welcome Mr. $firstName $lastName ";
}
String getWelcomeMessage5( {required String firstName, required String lastName}){
  return "welcome Mr. $firstName $lastName ";
}
String getWelcomeMessage6( {required String firstName,  String lastName = ""}){
  return "welcome Mr. $firstName $lastName ";
}
String getWelcomeMessage7( String firstName,  {String lastName = ""}){
return "welcome Mr. $firstName $lastName ";
}
String getWelcomeMessage8( {required String firstName,  String? lastName }){
return "welcome Mr. $firstName $lastName ";
}





