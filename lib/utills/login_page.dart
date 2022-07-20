import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, "/home_page");
      setState(() {
        changeButton = false;
      });
    }
  }

  // final _controller = TextEditingController();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                "images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  "Welcome $name !",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      // controller: _controller,
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },

                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        // keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a password :";
                          } else if (value.length < 4) {
                            return "Password should be greater than 4";
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 30.0,
                    ),

                    Ink(
                      child: InkWell(
                        splashColor: Colors.green,
                        highlightColor: Colors.yellow,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 70 : 130,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              // shape: changeButton
                              // ? BoxShape.circle
                              //     : BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  changeButton ? 40 : 10)),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   onPressed: () {
                    //     Fluttertoast.showToast(
                    //         msg: "Pressed",
                    //         toastLength: Toast.LENGTH_SHORT,
                    //         backgroundColor: Colors.yellow,
                    //         textColor: Colors.white,
                    //         fontSize: 15.0);
                    //     // Navigator.pushNamed(context, "/home_page");
                    // // },
                    // style: ButtonStyle(
                    //   minimumSize:
                    //       MaterialStateProperty.all(const Size(100, 40)),
                    //   backgroundColor:
                    //       MaterialStateProperty.all(Colors.lightBlue),
                    // ),
                    // )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
