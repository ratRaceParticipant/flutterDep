import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  var _jojiImageURL =
      "https://images.unsplash.com/photo-1619170519578-50bca88cff89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80";
  final List listTiteData = [
    {"text": "Home", "icon": CupertinoIcons.home},
    {"text": "Email", "icon": CupertinoIcons.mail},
    {"text": "Profile", "icon": CupertinoIcons.profile_circled},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green[300]),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(_jojiImageURL),
                  ),
                  currentAccountPictureSize: Size.fromRadius(40),
                  margin: EdgeInsets.zero,
                  accountName: Text("Himanshu"),
                  accountEmail: Text("averageRatRacer@gmail.com")),
            ),
            ...listTiteData.map(
              (e) => ListTile(
                leading: Icon(
                  e["icon"],
                  color: Colors.white,
                ),
                title: Text(
                  e["text"],
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            

            // ...

            // List.generate(3, (listTiteData.map(e)) {
            //   return ListTile(
            //     leading: Icon(
            //       Icons.home,
            //       color: Colors.white,
            //     ),
            //     title: Text(
            //       listTiteData<text>,
            //       textScaleFactor: 1.2,
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   );
            // })
          ],
        ),
      ),
    );
  }
}
