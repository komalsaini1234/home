import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/register.dart';
import 'package:neon_widgets/neon_widgets.dart';

class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 5, 131),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/ba.jpg"),
                    maxRadius: 150,
                  ),
                ),
              ),
              Text(
                "Plantly",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Can't seem to keep aplant alive?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                "Let us help you change that",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 7, 68, 117),
                    ),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
