import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/page/page_keys.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';
import 'package:quiz_app/screens/read_section_two/components/list_item.dart';

import '../../constants.dart';

class ReadSectionTwo extends GetView {
  final quizScreenController = QuizScreenController.find();
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
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 0;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                        );
                      },
                      child: List_item(
                        name: 'كلمات منونة',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 0;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 1',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 5;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 5,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 2',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 5;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 5,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 3',
                      ),
                    ),
                    List_item(
                      name: 'جمل متدرجة المستوى 4',
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 0;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الفتحة والمد بالألف',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 1;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 1,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الكسرة والمد بالياء ',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 2;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 2,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الضمة والمد بالواو',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 3;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 3,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع المقطع الساكن',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 4;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 4,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع اللام القمرية',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quizScreenController.sectionId = 5;
                        quizScreenController.phaseId = 0;
                        Get.toNamed(
                          PageKeys.quizScreen,
                          // arguments: {
                          //   'sectionId': 5,
                          //   'phaseId': 0,
                          // },
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع اللام الشمسية',
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
