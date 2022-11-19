import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    ;
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Stack(
            children: <Widget>[
              Image.asset("lib/assets/h1.jpg"),
            ],
          ),
          Column(
            children: <Widget>[
            
            ],
          ),
        ],
      ),
    );
  }
}
