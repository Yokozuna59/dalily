// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

// Project imports:
import 'models/destination.dart';
import 'models/country.dart';
import 'models/tour_guide.dart';

Future<List<Country>?> getCountries() async {
  final countries =
      await FirebaseFirestore.instance.collection('countries').get();
  if (countries.docs.isNotEmpty) {
    final List<Country> countriesObject =
        countries.docs.map((e) => Country.fromMap(e.data())).toList();
    return countriesObject;
  } else {
    return null;
  }
}

Future<List<Destination>?> getDestinations() async {
  final destinations =
      await FirebaseFirestore.instance.collection('destinations').get();
  if (destinations.docs.isNotEmpty) {
    final destinationsObject =
        destinations.docs.map((e) => Destination.fromMap(e.data())).toList();
    return destinationsObject;
  } else {
    return null;
  }
}

Future<List<TourGuide>?> getTourGuides() async {
  final tourGuides =
      await FirebaseFirestore.instance.collection('tour_guides').get();
  if (tourGuides.docs.isNotEmpty) {
    final tourGuidesObject =
        tourGuides.docs.map((e) => TourGuide.fromMap(e.data())).toList();
    return tourGuidesObject;
  } else {
    return null;
  }
}
