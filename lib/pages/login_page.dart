import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myRoute.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      key: key,
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 60.0,
          ),
          Image.asset(
            "assets/images/login_image_2.png",
            fit: BoxFit.fill,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username Cannot be null";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(minimumSize: Size(20.0, 30.0)),
            child: Text("Login"),
            onPressed: () {
              Navigator.pushNamed(context, MyRoute.homeRoute);
            },
          )
        ],
      )),
    );
  }
}
