import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/page/page_keys.dart';
import 'package:quiz_app/page/pages.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/read_section_one/read_section_one.dart';
import 'package:quiz_app/store/myStore.dart';

import 'screens/OnBoardingPage/onBoardingPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return MyStore();
      },
      child: MyApp(),
    ),
  );
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
      getPages: Pages.pages,
      initialRoute: PageKeys.onBording,
    );
  }
}
