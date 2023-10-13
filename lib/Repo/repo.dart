import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kts/model/model.dart';

class Repo {
  static List<String> upcomingEventsList = ["", ""]; //image , link
  static List<ModelData> pastEventsList = []; //image , link
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> fetchUpcomingEventsData() async {
    try {
      // Get the document snapshot

      await _firestore.collection("upcomingevents").get().then((querySnapshot) {
        querySnapshot.docs.forEach((documentSnapshot) {
          if (documentSnapshot.exists) {
            // Access the data as a Map and then access the specific key
            Map<String, dynamic> data = documentSnapshot.data();

            upcomingEventsList[0] = data['image'] as String;
            upcomingEventsList[1] = data['link'] as String;
          }
        });
      });
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }

  // fetching past events data

  static Future<void> fetchPastData() async {
    try {
      // Get the document snapshot

      await _firestore.collection("pastevents").get().then((querySnapshot) {
        querySnapshot.docs.forEach((documentSnapshot) {
          if (documentSnapshot.exists) {
            // Access the data as a Map and then access the specific key
            Map<String, dynamic> data = documentSnapshot.data();
            pastEventsList.add(ModelData(
                image: data['image'] as String, link: data['link'] as String));
          }
        });
      });
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }
}
