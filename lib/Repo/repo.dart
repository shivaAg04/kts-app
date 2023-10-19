import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kts/model/model.dart';

class Repo {
  static List<String> upcomingEventsList = ["", ""]; //image , link
  static List<ModelData> pastEventsList = [];
  static List<ModelData> achievementList = []; //image ,
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // fetching upcoming events data
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

  // fetching achievements data

  static Future<void> fetchAchievement() async {
    try {
      // Get the document snapshot

      await _firestore.collection("pastevents").get().then((querySnapshot) {
        querySnapshot.docs.forEach((documentSnapshot) {
          if (documentSnapshot.exists) {
            // Access the data as a Map and then access the specific key
            Map<String, dynamic> data = documentSnapshot.data();
            achievementList.add(
              ModelData(
                  image: data['image'] as String, link: data['link'] as String),
            );
          }
        });
      });
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }

  /// update upcoming Events

  static Future<void> updateUpcomigEvent(String image, String link) async {
    try {
      // Get the document snapshot
      final Map<String, String> data = {"image": image, "link": link};

      await _firestore
          .collection("upcomingevents")
          .doc("RFKe8UJCfusuhhcbA0ti")
          .set(data);
      print("fifiwwawiviwbviwbviwabv");
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }
  // add past events

  static Future<void> addPastEvent(String image, String link) async {
    try {
      // Get the document snapshot
      final Map<String, String> data = {"image": image, "link": link};

      await _firestore.collection("pastevents").add(data);
      print("fifiwwawiviwbviwbviwabv");
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }

  // addd achievement

  static Future<void> addAchievements(String image, String link) async {
    try {
      // Get the document snapshot
      final Map<String, String> data = {"image": image, "link": link};

      await _firestore.collection("achievements").add(data);
      print("fifiwwawiviwbviwbviwabv");
    } catch (e) {
      print('Error fetching data from Firestore: $e');
    }
  }
}
