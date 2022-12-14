import 'package:flutter/material.dart';
import '../assets/consts.dart';
import '../auth.dart';
import 'homePage.dart';

class UsernamePage extends StatefulWidget {
  const UsernamePage({super.key});

  @override
  State<UsernamePage> createState() => _UsernamePageState();
}

// ignore: camel_case_types
class _UsernamePageState extends State<UsernamePage> {
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(109, 0, 0, 20),
                  child: Container(
                      width: width * 0.4,
                      height: height * 0.4,
                      child: Image.asset(
                          "lib/assets/logoV3-removebg-preview.png")),
                ),
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
                      backgroundColor: Color.fromRGBO(21, 52, 77, 1),
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () async {
                      if (await singin(
                          usernameController.text, passwordController.text)) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
