// Flutter impors:

import 'package:dalily/pages/homePage.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:firebase_core/firebase_core.dart';
// Project imports:
import 'firebase_options.dart';
import 'pages/login_page.dart';
import 'models/tour_guide.dart';

List<TourGuide>? profileGuide;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const MyHomePage(),
    );
  }
}
