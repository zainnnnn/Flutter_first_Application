import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items items;

  const ItemWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: const StadiumBorder(side: BorderSide(color: Colors.lightBlue)),
      elevation: 2.0,
      child: ListTile(
        onTap: () => {
          Fluttertoast.showToast(
              msg: "The ${items.name} is pressed",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              fontSize: 15.0)
        },
        leading: Image.network(items.imgUrl),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "Kr${items.price}",
          textScaleFactor: 1.29,
          style:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
