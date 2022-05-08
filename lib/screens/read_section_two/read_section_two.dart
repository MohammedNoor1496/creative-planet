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
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 7,
                        );
                      },
                      child: List_item(
                        name: 'كلمات منونة',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 8,
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 1',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 9,
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 2',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 10,
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 3',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 11,
                        );
                      },
                      child: List_item(
                        name: 'جمل متدرجة المستوى 4',
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
                          PageKeys.readSectionTwoQuiz,
                          arguments: 1,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الفتحة والمد بالألف',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 2,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الكسرة والمد بالياء ',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 3,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع الضمة والمد بالواو',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 4,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع المقطع الساكن',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 5,
                        );
                      },
                      child: List_item(
                        name: 'كلمات مع اللام القمرية',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          PageKeys.readSectionTwoQuiz,
                          arguments: 6,
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
