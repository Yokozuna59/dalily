import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/consts.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
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
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(children: <Widget>[
            SizedBox(
              width: 300,
              height: 60,
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
            Padding(
                padding: const EdgeInsets.all(3),
                child: TextButton(
                  onPressed: () {}, //TODO
                  child: const Text("Already have an account.",
                      style: TextStyle(color: Color(0xFF3988C9), fontSize: 15)),
                )),
          ]),
        ),
        Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Remind me later.",
                style: TextStyle(
                    color: Color(0xFF3988C9),
                    decoration: TextDecoration.underline),
              ),
            )),
      ]),
    );
  }
}
