import 'package:dalily/assets/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlacesCategory extends StatelessWidget {
  const PlacesCategory({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  //TODO color for selection
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          //TODO ontap
        },
        child: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(100))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [FaIcon(icon), Text(text)])),
          ),
        ),
      ),
    );
  }
}
