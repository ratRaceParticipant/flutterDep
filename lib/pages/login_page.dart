import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myRoute.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool _isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
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
          Text(
            "Welcome $_name",
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
                  onChanged: (value) {
                    _name = value;
                    setState(() {});
                  },
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Username Cannot be null";
                  //   } else
                  //     return null;
                  // },
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
          InkWell(
            onTap: () async {
              setState(() {
                _isButtonPressed = !_isButtonPressed;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoute.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              child: _isButtonPressed
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
              height: 50,
              width: _isButtonPressed ? 50 : 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                // shape: _isButtonPressed ? BoxShape.circle : BoxShape.rectangle
                borderRadius: BorderRadius.circular(_isButtonPressed ? 100 : 8),
              ),
            ),
          )
          // ElevatedButton(
          //   style: TextButton.styleFrom(minimumSize: Size(20.0, 30.0)),
          //   child: Text("Login"),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoute.homeRoute);
          //   },
          // )
        ],
      )),
    );
  }
}
