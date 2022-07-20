import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigdets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            "Catalog app",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hello to my $days days trip"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
