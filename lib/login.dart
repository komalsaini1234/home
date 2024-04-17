import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/bottom_navBar.dart';
import 'package:flutter_application_2/forgot.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 5, 131),
        body: Column(children: [
          Center(
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: size.height / 3,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80))),
              child: Image.asset(
                "assets/ba.jpg",
                fit: BoxFit.cover,
                scale: 4.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Login to your account",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person), hintText: "Username"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), hintText: "Password"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: _ischecked,
                        onChanged: (newvalue) {
                          setState(() {
                            _ischecked = newvalue!;
                          });
                        }),
                    Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forgot()));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 7, 68, 117),
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          )
        ]));
  }
}
