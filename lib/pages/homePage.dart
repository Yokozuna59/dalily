import 'package:dalily/assets/consts.dart';
import 'package:dalily/pages/login_page.dart';
import 'package:dalily/pages/profilePage.dart';
import 'package:dalily/pages/savePage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
        backgroundColor: KbackgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          index: index,
          backgroundColor: KbackgroundColor,
          animationCurve: Curves.linearToEaseOut,
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.map_rounded, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.person_rounded, size: 30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
