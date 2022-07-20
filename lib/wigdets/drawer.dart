import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String imageURl =
        "https://yt3.ggpht.com/ytc/AKedOLQCqhMY63pFHcuWJ6bAVheGmjsbK6r3Z0oThXSuUg=s900-c-k-c0x00ffffff-no-rj";

    toast(BuildContext context) {
      Fluttertoast.showToast(
          msg: "Pressed",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.yellow,
          textColor: Colors.white,
          fontSize: 15.0);
    }

    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: NetworkImage(imageURl)),
                    margin: EdgeInsets.zero,
                    accountName: Text("Zain Ul Abdin"),
                    accountEmail: Text("mzain2353@gmail.com"))),
            ListTile(
              // onTap: () => toast(context),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.alarm,
                color: Colors.white,
              ),
              title: Text(
                "Alarm",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
