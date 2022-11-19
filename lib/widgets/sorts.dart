import 'package:flutter/material.dart';

import '../assets/consts.dart';

class SortsHome extends StatefulWidget {
  const SortsHome({
    super.key,
    required this.text,
    required this.style,
  });
  final TextStyle style;
  final String text;

  @override
  State<SortsHome> createState() => _SortsHomeState();
}

class _SortsHomeState extends State<SortsHome> {
  //final Function onTap

  TextStyle style = KsortStyle;
  void active() {
    setState(() {
      style = KsortStyleActiv;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        active();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 12, 8),
        child: Text(
          widget.text,
          style: style,
          
        ),
      ),
    );
  }
}
