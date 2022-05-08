import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ReadSectionTwoQuiz extends GetView {
  final path = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "أساسيات القراءة المرحلة الثانية",
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Image.asset('assets/readpahseonesectiontwo/$path.png'),
        ),
      ),
    );
  }
}
