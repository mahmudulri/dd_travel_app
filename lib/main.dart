import 'package:dd_travel_app/screens/draft.dart';
import 'package:dd_travel_app/screens/getstarted_screen.dart';
import 'package:dd_travel_app/homescreen/home_screen.dart';
import 'package:dd_travel_app/screens/login_screen.dart';
import 'package:dd_travel_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DD Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeScreen,
      getPages: getPages,
      home: HomeScreen(),
    );
  }
}
