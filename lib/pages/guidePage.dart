import 'package:dalily/assets/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF3988C9)),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.asset("lib/assets/h1.jpg"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: RatingStars(
                                        value: 4, //TODO value
                                        starBuilder: (index, color) => Icon(
                                          Icons.star_rounded,
                                          color: color,
                                        ),
                                        starCount: 5,
                                        starSize: 20,
                                        valueLabelColor:
                                            const Color(0xff9b9b9b),
                                        valueLabelTextStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.0),
                                        valueLabelRadius: 10,
                                        maxValue: 5,
                                        starSpacing: 2,
                                        maxValueVisibility: true,
                                        valueLabelVisibility: true,
                                        animationDuration:
                                            Duration(milliseconds: 1000),
                                        valueLabelPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 1, horizontal: 8),
                                        valueLabelMargin:
                                            const EdgeInsets.only(right: 8),
                                        starOffColor: const Color(0xffe7e8ea),
                                        starColor: Colors.yellow,
                                      ))),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("Japan", style: KdistinationStyle),
                            ],
                          ), //TODO namae
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
