void main () {
  //Strings
  String welcome = "Welcome to flutter course";
  print(welcome.length);
  print(welcome.isEmpty);
  print(welcome.isNotEmpty);
  print(welcome.startsWith("Welcome"));
  print(welcome.split(" "));
  
  print(welcome.toUpperCase());
  print(welcome.toLowerCase());
  // iphone => Iphone

  print(welcome.contains("flutter"));
  print(welcome.substring(8,10));

  print('--------------------------------------');
  String date = "2023-06-29";
  print(date.split("-"));
  print('Year : ${date.split("-")[0]}');
  print('Month : ${date.split("-")[1]}');
  print('Day : ${date.split("-")[2]}');

  print('----------------------------------------');
  String dateTime = "2023-06-29 6:30AM";
  var dateTimes = dateTime.split(" ");
  var date2 = dateTimes[0];
  var time2 = dateTimes[1];

  print('Date : $date2');
  print('Time : $time2');

  // Trim => R/L, TrimLeft => L, TrimRight => R
  // replaceAll => all space
  String email = " salma@gmai l.com ";
  print(email.length);
  email = email.replaceAll(" ", "");
  print(email.length);
  print('---------------------------------------------');

  // 01093170969
  // 0109 3170 969
  // +201093170969
  // +20109 3170 969
  // 00201093170969
  // 0020109 3170 969
  // 0020109-3170-969

  String phoneNumber ="0020109 3170 969";
  phoneNumber = phoneNumber.replaceAll(" ", "").replaceAll("-", "");

  if (phoneNumber.startsWith("002")){
    phoneNumber = phoneNumber.replaceFirst("002", "+2");

  }
  print(phoneNumber);

}