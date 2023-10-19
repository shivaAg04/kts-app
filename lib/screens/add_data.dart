import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';
import 'package:lottie/lottie.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  bool isUpcomigupdating = false;
  bool isPastupdating = false;
  bool isaAchievementsupdating = false;
  TextEditingController upcomingEventsController = TextEditingController();
  TextEditingController pastEventsController = TextEditingController();
  TextEditingController achievementsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * .1,
              ),
              Lottie.asset("assets/lottie/add.json"),
              SizedBox(
                height: height * .06,
              ),
              // upcoming events
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: upcomingEventsController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.cyan, strokeAlign: 90.0),
                  ),
                  hintText: 'Upcoming Events ',
                  labelText: 'Upcoming Events  ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: MaterialButton(
                  onPressed: () async {
                    String image = "";
                    image = upcomingEventsController.text;

                    String link = "Shiva";
                    if (image.isNotEmpty && link.isNotEmpty) {
                      setState(() {
                        isUpcomigupdating = true;
                      });
                      await Repo.updateUpcomigEvent(image, link).then((value) {
                        upcomingEventsController.clear();
                        isUpcomigupdating = false;
                        setState(() {});
                      });
                    }
                  },
                  color: Colors.cyan,
                  child: isUpcomigupdating
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const Text("Update Upcoming Event"),
                ),
              ),
              //past events
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: pastEventsController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.cyan, strokeAlign: 90.0),
                    ),
                    hintText: 'Past Events',
                    labelText: 'Past Events ',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: MaterialButton(
                  onPressed: () async {
                    String image = "";
                    image = pastEventsController.text;

                    String link = "Shiva";
                    if (image.isNotEmpty && link.isNotEmpty) {
                      setState(() {
                        isPastupdating = true;
                      });
                      await Repo.addPastEvent(image, link).then((value) {
                        pastEventsController.clear();
                        isPastupdating = false;
                        setState(() {});
                      });
                    }
                  },
                  color: Colors.cyan,
                  child: isPastupdating
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const Text("Add Past Eventst"),
                ),
              ),
              //achievements
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: achievementsController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.cyan, strokeAlign: 90.0),
                  ),
                  hintText: 'Achievements   ',
                  labelText: 'Achievements  ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: MaterialButton(
                  onPressed: () async {
                    String image = "";
                    image = achievementsController.text;

                    String link = "Shiva";
                    if (image.isNotEmpty && link.isNotEmpty) {
                      setState(() {
                        isaAchievementsupdating = true;
                      });
                      await Repo.addAchievements(image, link).then((value) {
                        achievementsController.clear();
                        isaAchievementsupdating = false;
                        setState(() {});
                      });
                    }
                  },
                  color: Colors.cyan,
                  child: isaAchievementsupdating
                      ? const CircularProgressIndicator()
                      : const Text("Add Achievements"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
