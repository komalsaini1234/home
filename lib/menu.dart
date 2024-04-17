import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/images.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    List dish = [food4, food2, food6, food, food1, food2, food3, food7];

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 190, 236),
          title: Text(
            'Menu Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Our Top Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              child: SizedBox(
                  height: 380,
                  child: ListView.builder(
                      itemCount: dish.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(dish[index]),
                                maxRadius: 90,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Sample Headline",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Sample text,click to select the text box",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "click again or double click to start editing the text",
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "99/ rupees",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => home()));
                                      },
                                      child: Text(
                                        "Order now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ))
                            ]));
                      })))
        ]));
  }
}
