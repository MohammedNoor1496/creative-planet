import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';
import '../../../utils/scale_util.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends GetView<QuizScreenController> {

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller

    ScaleUtil scU = ScaleUtil(context);

    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text: "السؤال ${controller.questionNumber}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text:
                              "/${QuestionController.p1[controller.phaseId] == null ? "?" : (QuestionController.p1[controller.phaseId][controller.sectionId] == null ? "?" : (QuestionController.p1[controller.phaseId][controller.sectionId].length.toString()))}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                  child: QuestionController.p1[controller.phaseId] == null
                      ? Center(
                          child: Text("no qution"),
                        )
                      : (QuestionController.p1[controller.phaseId][controller.sectionId] == null
                          ? Center(
                              child: Text("no qution"),
                            )
                          : (QuestionController
                                      .p1[controller.phaseId][controller.sectionId].isEmpty ==
                                  null
                              ? Center(
                                  child: Text(
                                    "no qution",
                                  ),
                                )
                              : PageView(
                                  // Block swipe to next qn
                                  physics: NeverScrollableScrollPhysics(),
                                  controller: controller.pageController,
                                  onPageChanged:(index){
                                    controller.questionNumber.value = index;
                                  },
                                  children: QuestionController
                                      .p1[controller.phaseId][controller.sectionId].entries
                                      .map(
                                        (e) => QuestionCard(
                                          question: e.value,
                                        ),
                                      )
                                      .toList(),
                                )))),
            ],
          ),
        )
      ],
    );
  }
}
