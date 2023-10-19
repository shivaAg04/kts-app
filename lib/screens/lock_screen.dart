import 'package:flutter/material.dart';
import 'package:kts/const/fonts.dart';
import 'package:kts/screens/add_data.dart';
import 'package:lottie/lottie.dart';

class LockScreen extends StatelessWidget {
  LockScreen({super.key});
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * .3;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: height * .3,
              ),
              SizedBox(
                  height: height * .5,
                  child: Lottie.asset("assets/lottie/lock.json")),
              SizedBox(
                height: height * .3,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.cyan, strokeAlign: 90.0),
                  ),
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.cyan,
                  child: Text("Unlock"),
                  onPressed: () {
                    if (passwordController.text == "9794275421") {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddData(),
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
