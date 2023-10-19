import 'package:flutter/material.dart';
import 'package:kts/screens/add_data.dart';
import 'package:kts/screens/custom_bottom_navigation.dart';
import 'package:kts/screens/home_screen.dart';
import 'package:kts/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kts/screens/teams/team.dart';
import 'firebase_options.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'KTS',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
