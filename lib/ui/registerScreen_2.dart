import 'package:flutter/material.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreenState();
}

bool obscure = true;

class _RegisterScreenState extends State<RegisterScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    labelText: "Phone Number ",
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.landscape,
                      color: Colors.green,
                    ),
                    labelText: "Address ",
                  ),
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    labelText: "Name ",
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.green,
                    ),
                    labelText: "Email address",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: Icon(obscure
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye_rounded),
                      color: Colors.green,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.green,
                    ),
                    hintText: "Password ",
                  ),
                  obscureText: obscure,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (context) {}),
                    const Text(
                      "i agree with",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms and conditions",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
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
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}