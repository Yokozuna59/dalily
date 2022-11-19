import 'dart:developer';

import 'package:dalily/assets/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlacesCategory extends StatefulWidget {
  const PlacesCategory({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  State<PlacesCategory> createState() => _PlacesCategoryState();
}

class _PlacesCategoryState extends State<PlacesCategory> {
  Color color = Colors.white;
  Color iconColor = Colors.black;

  void change() {
    color = Colors.black;
    iconColor = Colors.white;
    log('111111111111111111111111111111111');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          change();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(color: color),
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(100))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  FaIcon(
                    widget.icon,
                    color: iconColor,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(color: iconColor),
                  )
                ])),
          ),
        ),
      ),
    );
  }
}
