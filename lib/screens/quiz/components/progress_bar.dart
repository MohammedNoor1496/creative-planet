import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';

import '../../../constants.dart';

class ProgressBar extends GetView<QuizScreenController> {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Obx(() {
      return Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            // LayoutBuilder provide us the available space for the conatiner
            // constraints.maxWidth needed for our animation
            LayoutBuilder(
              builder: (context, constraints) => Container(
                // from 0 to 1 it takes 60s
                width:( constraints.maxWidth * controller.progress.value) / 100,
                decoration: BoxDecoration(
                  gradient: kPrimaryGradient,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${(controller.progress.value).round()} sec"),
                    SvgPicture.asset("assets/icons/clock.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
