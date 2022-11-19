import 'package:flutter/material.dart';

import '../assets/consts.dart';

class SortsHome extends StatelessWidget {
  const SortsHome({
    super.key,
    required this.text,
    required this.style,
  });
  final TextStyle style;
  final String text;
  //final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, //TODO onTap
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 19, 8),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
    ;
  }
}
