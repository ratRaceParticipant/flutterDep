import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String days = "101";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saman Lelo"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
