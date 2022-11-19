// Flutter imports:
import 'package:dalily/pages/guidePage.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';

// Project imports:
import 'fetch_data.dart';
import 'firebase_options.dart';
import 'pages/login_page.dart';
import 'models/tour_guide.dart';
import 'pages/guider_profile.dart';

List<TourGuide>? profileGuide;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  profileGuide = await getTourGuides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileCard(
          name: profileGuide![0].name,
          rate: profileGuide![0].rating,
          quote: profileGuide![0].quote,
          image: profileGuide![0].imageURL,
          price: profileGuide![0].bill),
    );
  }
}
