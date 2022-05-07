import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';

class ScoreScreen extends GetView<QuizScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "النتيجة",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Obx(() {
                return Text(
                  "${controller.score}/${QuestionController.p1[controller.phaseId] == null ? "?" : (QuestionController.p1[controller.phaseId][controller.sectionId] == null ? "?" : (QuestionController.p1[controller.phaseId][controller.sectionId].length * 2))}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kSecondaryColor),
                );
              }),
              Spacer(flex: 3),
              Text(
                "وفقك الله و رعاك",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
