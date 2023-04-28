import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  String days = "101";
  bool darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Saman Lelo"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $darkMode of flutter"),
          ),
        ),
        drawer: MyDrawer());
  }
}
