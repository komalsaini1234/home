import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/grid.dart';
import 'package:flutter_application_2/project.dart';
import 'package:flutter_application_2/icons.dart';
import 'package:flutter_application_2/images.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/text.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // int selectedIndex = 0;

  // TextStyle mystyle = const TextStyle(color: Colors.amber, fontSize: 18);
  // List<Widget> pages = <Widget>[
  //   Text(
  //     "Home Page",
  //   ),
  //   Text("Profile Page"),
  //   Text("Menu Page"),
  // ];

  // void onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    List Images = [lakeImg, lake1Img, lake2Img, lake3Img, lake4Img, lake5Img];
    List Iconss = [hotel, restaurant, train, flight, bus];
    List text = [hotels, Rest, trains, Flights, buss];
    List grids = [taj, fou, gate, hill, best, colorr];
    List tt = [
      "tajmahal",
      "foutain",
      "gate",
      "hill satation",
      "best picture",
      "colour pic"
    ];

    Size size = MediaQuery.of(context).size;

    final RoundedLoadingButtonController _controller =
        RoundedLoadingButtonController();

    return Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
            child: ListView(children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 157, 183),
                  image: DecorationImage(
                      image: AssetImage("assets/green.jpg"), fit: BoxFit.fill)),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/girl1.jpg",
                      ),
                      maxRadius: 40,
                    ),
                  )
                ],
              )),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            trailing: const Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            title: const Text('hotel'),
            leading: const Icon(Icons.hotel),
            trailing: const Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            title: const Text('train'),
            leading: const Icon(Icons.train),
            trailing: const Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            title: const Text('restaurant'),
            leading: const Icon(Icons.restaurant),
            trailing: const Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            title: const Text('share'),
            leading: const Icon(Icons.share),
            trailing: const Icon(Icons.edit),
          ),
        ])),
        appBar: AppBar(
            // backgroundColor: Colors.amber,

            ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hey Riya !",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Let's explore places",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/girl1.jpg",
                        ),
                        maxRadius: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "search docs",
                                  suffixIcon: Icon(Icons.search)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 59, 149, 223)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => project(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.account_tree,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height / 4,
                    child: ListView.builder(
                      itemCount: Images.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MyHomePage(
                                              title: 'next screen',
                                            )));
                              },
                              child: Container(
                                height: 150,
                                width: 350,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Images[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "vintage is Great Everytime!",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 50,
                                          left: 20,
                                          right: 20,
                                          bottom: 10),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet consectetur adipiscing elit sed",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                )),
                              ),
                            ),
                          ]),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  // RoundedLoadingButton(
                  //     controller: _controller,
                  //     onPressed: () {},
                  //     child: const Text('Press me')),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: size.height / 4,
                      child: ListView.builder(
                        itemCount: Iconss.length,
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(38.0),
                            child: Container(
                                child: Column(
                              children: [
                                CircleAvatar(
                                  child: Iconss[index],
                                  foregroundColor: Colors.blue,
                                ),
                                Text(
                                  text[index],
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular Places",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                      child: SizedBox(
                    height: 250,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              grids[index],
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Text(
                                    tt[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ));
                        }),
                  ))
                ]))));
  }
}
