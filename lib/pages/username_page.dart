import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../assets/consts.dart';

class Username_Page extends StatefulWidget {
  const Username_Page({super.key});

  @override
  State<Username_Page> createState() => _Username_PageState();
}

// ignore: camel_case_types
class _Username_PageState extends State<Username_Page> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
        backgroundColor: KbackgroundColor,
        body: Column(children: [
          SizedBox(
            height: height * 0.04,
          ),
          Stack(
            children: <Widget>[
              SizedBox(
                width: width,
                child: Image.asset(
                  "lib/assets/map_background.jpg",
                  fit: BoxFit.fitWidth,
                  opacity: const AlwaysStoppedAnimation(0.05),
                ),
              ),
              Image.asset("lib/assets/logo-removebg-preview.png")
            ],
          ),
          Column(children: <Widget>[
            SizedBox(
              height: height * 0.008,
            ),
            SizedBox(
              width: width * 0.7,
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  hintText: 'Email: example@gmail.com',
                ),
                onChanged: (text) {
                  print('First text field: $text');
                },
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              width: width * 0.7,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  hintText: 'Password',
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (text) {
                  print('First text field: $text');
                },
              ),
            ),
          ]),
        ]));
  }
}
