import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/menu.dart';
import 'package:flutter_application_2/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [home(), Profile(), MenuPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
