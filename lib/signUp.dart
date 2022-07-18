import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application_1/login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/signup.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Signup",
                  style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Name", hintText: "Enter your name :"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Email", hintText: "Enter your email :"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Phone", hintText: "Enter your phone :"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password", hintText: "Enter a password"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: const Text("SignUp"),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Pressed",
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 15.0);
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Already have an account?"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
