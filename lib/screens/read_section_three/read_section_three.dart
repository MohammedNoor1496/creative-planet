import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/page/page_keys.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';
import 'package:quiz_app/screens/read_section_two/components/list_item.dart';

import '../../constants.dart';

class ReadSectionThree extends GetView {
  final quizScreenController = QuizScreenController.find();
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
                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 4,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 4',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 5,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 5',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 6,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 6',
                      ),
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

                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 1,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 1',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 2,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 2',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionThreeQuiz,
                          arguments: 3,
                        );
                      },
                      child: List_item(
                        name: 'المستوى الأول 3',
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
