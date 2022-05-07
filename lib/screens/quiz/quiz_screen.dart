import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';

import 'components/body.dart';

class QuizScreen extends GetView<QuizScreenController> {
  // final int sectionId;
  // final int phaseId;
  // QuizScreen(this.sectionId, this.phaseId);

  @override
  Widget build(BuildContext context) {
    // setcionId = Get.arguments['sectionId'] ?? -1;
    // phaseId = Get.arguments['phaseId'] ?? -1;
    // print("my val = $setcionId");
    // print("my val2 = $phaseId");
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: controller.nextQuestion, child: Text("تخطي")),
        ],
      ),
      body: Body(),
    );
  }
}
