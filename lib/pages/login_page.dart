import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/consts.dart';

class LoginPage extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: KbackgroundColor,
      body: Column(children: [
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
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
            width: width * 0.3,
            height: height * 0.3,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3988C9),
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Create a new account.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          TextButton(
            onPressed: () {}, //TODO
            child: const Text("Already have an account.",
                style: TextStyle(color: Color(0xFF3988C9), fontSize: 15)),
          ),
        ]),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Remind me later.",
            style: TextStyle(
                color: Color(0xFF3988C9), decoration: TextDecoration.underline),
          ),
        ),
      ]),
    );
  }
}
