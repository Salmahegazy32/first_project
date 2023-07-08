import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Login"),
    ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
              }, child: Text("Login"),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child:OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(45),
                ),
                child: Text('Register'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ),
          ],
        ),
      ),
    );
  }
}
