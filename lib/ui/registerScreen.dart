import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                const Text( "Register", style: TextStyle(
                  fontSize: 50,

                ),),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Company name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Website name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "E-mail address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(

                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(
                        Icons.check_box_outline_blank
                    ),
                    ),
                    Text("I agree with" , style: TextStyle(
                      fontSize: 15,),),
                    TextButton(onPressed: (){}, child:
                        Text("Terms and conditions"
                        ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 40,
                    width: 310,
                    child: ElevatedButton(
                      onPressed: () {
                      }, child: Text("CREATE ACCOUNT"),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Log in ",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
