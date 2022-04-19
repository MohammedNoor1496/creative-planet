import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

import 'screens/OnBoardingPage/onBoardingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'كوكب الابداع',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        brightness: Brightness.dark,
      ),
      home: OnBoardingPage(),
      routes: {
        QuizScreen.path: (context) => QuizScreen(),
      },
    );
  }
}
