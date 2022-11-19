import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../assets/consts.dart';
import '../widgets/distnations.dart';
import '../widgets/placesCategory.dart';
import '../widgets/sorts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Find your dream trip", style: KHomePageTital),
                    const Icon(
                      Icons.search_rounded,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: const <Widget>[
                  PlacesCategory(icon: FontAwesomeIcons.city, text: "cities"),
                  PlacesCategory(icon: FontAwesomeIcons.tree, text: "nature"),
                  PlacesCategory(
                      icon: FontAwesomeIcons.earthOceania, text: "seas"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 1, 8),
              child: Center(
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SortsHome(
                        text: "Popular",
                        style: KsortStyleActiv,
                      ),
                      SortsHome(
                        text: "Public",
                        style: KsortStyle,
                      ),
                      SortsHome(
                        text: "privet",
                        style: KsortStyle,
                      ),
                      SortsHome(
                        text: 'Recomanded',
                        style: KsortStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Distnation(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
