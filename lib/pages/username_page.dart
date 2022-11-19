import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../assets/consts.dart';
import '../auth.dart';

class Username_Page extends StatefulWidget {
  const Username_Page({super.key});

  @override
  State<Username_Page> createState() => _Username_PageState();
}

// ignore: camel_case_types
class _Username_PageState extends State<Username_Page> {
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: KbackgroundColor,
        body: Column(children: [
          SizedBox(
            height: height * 0.04,
          ),
          Flexible(
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: width,
                  child: Image.asset(
                    "lib/assets/map_background.jpg",
                    fit: BoxFit.fitWidth,
                    opacity: const AlwaysStoppedAnimation(0.05),
                  ),
                ),
                Image.asset("lib/assets/logo-removebg-preview.png"),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(children: <Widget>[
              SizedBox(
                height: height * 0.008,
              ),
              SizedBox(
                width: width * 0.7,
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Email: example@gmail.com',
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.7,
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                height: height * 0.06,
                width: width * 0.4,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3988C9),
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () async {
                      if (await singin(
                          usernameController.text, passwordController.text)) {
                        Navigator.pop(context);
                      } else {}
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ]),
          ),
        ]));
  }
}
