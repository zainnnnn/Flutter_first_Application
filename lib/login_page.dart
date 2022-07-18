import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Text(
                "Login",
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
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Pressed",
                          toastLength: Toast.LENGTH_SHORT,
                          backgroundColor: Colors.yellow,
                          textColor: Colors.white,
                          fontSize: 15.0);
                      // Navigator.pushNamed(context, "/home_page");
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(100, 40)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
