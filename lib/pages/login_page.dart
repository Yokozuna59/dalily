import 'dart:math';

import 'package:dalily/pages/username_page.dart';
import 'package:flutter/material.dart';
import '../assets/consts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            Center(
              child: Container(
                width: width * 0.6,
                height: height * 0.6,
                child: Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Image.asset(
                          "lib/assets/logoV3-removebg-preview.png")),
                ),
              ),
            )
          ],
        ),
        Column(children: <Widget>[
          SizedBox(
            height: height * 0.1,
          ),
          SizedBox(
            width: width * 0.6,
            height: height * 0.08,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(21, 52, 77, 1),
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Create a new account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UsernamePage()));
            }, //TODO
            child: const Text("Already have an account",
                style: TextStyle(color: Color(0xFF3988C9), fontSize: 15)),
          ),
        ]),
        const SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Remind me later",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
