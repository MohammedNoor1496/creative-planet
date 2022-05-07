import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';

import '../../../constants.dart';

class Option extends GetView<QuizScreenController> {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      Rx<Color> answerStateColor = Rx<Color>(Colors.black);
      Rx<IconData> answerStateIcon = Rx<IconData>(Icons.close);
      if (controller.selectedAns.value != -1) {
        if (controller.selectedAns == controller.correctAns) {
          answerStateColor.value = kGreenColor;
        } else {
          answerStateColor.value = kRedColor;
        }
      } else {
        answerStateColor.value = kGrayColor;
      }

      answerStateIcon.value =
          answerStateColor.value == kRedColor ? Icons.close : Icons.done;

      return InkWell(
        onTap: press,
        child: Container(
          margin: EdgeInsets.only(top: kDefaultPadding),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            border: Border.all(
              color: controller.selectedAns.value == index
                  ? answerStateColor.value
                  : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${index + 1}. $text",
                style: TextStyle(
                    color: controller.selectedAns.value == index
                        ? answerStateColor.value
                        : Colors.grey,
                    fontSize: 16),
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: controller.selectedAns.value == index
                      ? answerStateColor.value
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: controller.selectedAns.value == index
                          ? answerStateColor.value
                          : Colors.grey),
                ),
                child: controller.selectedAns.value == index
                    ? Icon(
                        answerStateIcon.value,
                        size: 16,
                        color: Colors.white,
                      )
                    : null,
              )
            ],
          ),
        ),
      );
    });
  }
}
