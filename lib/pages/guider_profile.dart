import 'package:dalily/models/tour_guide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../fetch_data.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard(
      {super.key,
      required this.name,
      required this.rate,
      required this.quote,
      required this.image,
      required this.price});

  String price;
  String name;
  String quote;
  String rate;
  String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Image.network(image),
            ),
            title: Text(name),
            subtitle: Text(quote),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Card(
                child: Text(" $rate/5"),
              ),
              TextButton(
                child: const Text('Book'),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: Text(price),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
