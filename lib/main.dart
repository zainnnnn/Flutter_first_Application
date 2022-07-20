import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/home_page.dart';
import 'package:flutter_application_1/utills/login_page.dart';
import 'package:flutter_application_1/utills/signUp.dart';
import 'package:flutter_application_1/wigdets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home_page", //for main page
      routes: {
        "/": (context) => const HomePage(),
        "/home_page": (context) => const HomePage(),
        "/login_page": (context) => const LoginPage(),
        "/signUP": (context) => const SignUp(),
      },
    );
  }
}
