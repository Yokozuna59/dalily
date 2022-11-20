import 'package:dalily/assets/consts.dart';
import 'package:dalily/fetch_data.dart';
import 'package:dalily/models/tour_guide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import 'guider_profile.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/dalily-56933.appspot.com/o/pexels-ramkumar-ramachandran-10170838%20(1).jpg?alt=media&token=2cdfd547-0870-4eb8-8291-f8f83c4537cb'),
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
                              Text("USA San Gei", style: KdistinationStyle),
                            ],
                          ), //TODO namae
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                FutureBuilder(
                    future: getTourGuides(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final tourGuides = snapshot.data as List<TourGuide>;
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: tourGuides.length,
                            itemBuilder: (context, index) {
                              final tourGuide = tourGuides[index];
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ProfileCard(
                                  price: tourGuide.bill.toInt().toString(),
                                  quote: tourGuide.quote,
                                  image: tourGuide.imageURL,
                                  name: tourGuide.name,
                                  rate: tourGuide.rating.toInt().toString(),
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
