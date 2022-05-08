import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ReadSectionThreeQuiz extends GetView {
  final path = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "أساسيات القراءة المرحلة الثالثة",
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/bg.png',
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Image.asset('assets/readpahseonesectionthree/$path.png'),
            ),
          ],
        ),
      ),
    );
  }
}
