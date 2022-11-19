// ignore_for_file: prefer_const_constructors

import 'package:dalily/assets/consts.dart';
import 'package:dalily/pages/guidePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class Distnation extends StatelessWidget {
  const Distnation(
      {super.key,
      required this.image,
      required this.rating,
      required this.name});
  final String image;
  final num rating;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GuidePage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.network(image), //TODO network image
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 35),
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
                                value: rating.toDouble(), //TODO value
                                starBuilder: (index, color) => Icon(
                                  Icons.star_rounded,
                                  color: color,
                                ),
                                starCount: 5,
                                starSize: 20,
                                valueLabelColor: const Color(0xff9b9b9b),
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
                                animationDuration: Duration(milliseconds: 1000),
                                valueLabelPadding: const EdgeInsets.symmetric(
                                    vertical: 1, horizontal: 8),
                                valueLabelMargin:
                                    const EdgeInsets.only(right: 8),
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Colors.yellow,
                              ))),
                      SizedBox(
                        height: 10,
                      ),
                      Text(name, style: KdistinationStyle),
                    ],
                  ), //TODO namae
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
