
import 'package:first_project/ui/loginScreen.dart';
import 'package:first_project/ui/registerScreen.dart';
import 'package:first_project/ui/registerScreen_2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'blog/blog_screen.dart';
import 'ui/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
       //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        // useMaterial3: true,
      ),
      home: BlogScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(
                  Icons.search
              ),
          ),
          IconButton(onPressed: () {
          }, icon: Icon(Icons.notifications),
          ),
        ],
      ),
      // Layouts => Column , Row , Stack
      // children => list of widget

      body: Container(
        width: double.infinity,
        child: Column(
          // Main   => Vertical
          // Cross  => Horizontal

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Body",
              style: TextStyle(
              fontSize: 55, fontWeight: FontWeight.w900, color: Colors.blue),
            ),
            ElevatedButton(onPressed: () {
            }, child: Text(
              "Login",
            ),
            ),
            ElevatedButton(onPressed: () {
            }, child: Text(
              "Register",
            ),
            ),
          ],
        ),
      ),
    );
  }
}


