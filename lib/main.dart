import 'package:first_project/blog/blog_screen.dart';
import 'package:first_project/tasks/seasion_four/messages_screen.dart';
import 'package:first_project/tasks/sesion_three/registerScreen.dart';
import 'package:first_project/ui/registerScreen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MessagesScreen(),
    );
  }
}