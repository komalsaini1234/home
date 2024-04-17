import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 218, 80, 126),
          title: Text(
            'Profile',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/girl1.jpg"),
                        maxRadius: 70,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Text(
              "user",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.contact_phone,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Name",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Number",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ));
  }
}
