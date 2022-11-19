import 'package:dalily/assets/consts.dart';
import 'package:dalily/pages/profilePage.dart';
import 'package:dalily/pages/savePage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late int page;
  int index = 1;
  final screens = [
    SavePage(),
    HomePage(),
    ProfilePage(),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: KbackgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          index: index,
          backgroundColor: KbackgroundColor,
          animationCurve: Curves.linearToEaseOut,
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.bookmark_rounded, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.person_rounded, size: 30),
          ],
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        body: screens[index]);
  }
}
