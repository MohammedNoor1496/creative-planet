import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

import '../../constants.dart';
import 'components/list_item.dart';
import 'components/list_item_double.dart';

class ReadSectionOne extends StatefulWidget {
  static const path = 'read-section-one';

  @override
  State<ReadSectionOne> createState() => _ReadSectionOneState();
}

class _ReadSectionOneState extends State<ReadSectionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "أساسيات القراءة المرحلة الأولى",
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
                    List_item_Double(
                      imagePath: 'assets/readphaseone/readphaseone7.png',
                      firstname: 'تحليل',
                      secondname: 'الصوت القصير',
                    ),
                    List_item_Double(
                      imagePath: 'assets/readphaseone/readphaseone8.png',
                      firstname: 'الصوت الطويل',
                      secondname: 'المقطع الساكن',
                    ),
                    List_item(
                      name: 'إختيار الكلمة الصحيحه',
                      imagePath: 'assets/readphaseone/readphaseone9.png',
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          QuizScreen.path,
                          arguments: {
                            'sectionId': 1,
                            'phaseId': 1,
                          },
                        );
                      },
                      child: List_item(
                        name: 'الايقاع الصوتي',
                        imagePath: 'assets/readphaseone/readphaseone1.png',
                      ),
                    ),
                    List_item(
                      name: 'اسم الإشارة',
                      imagePath: 'assets/readphaseone/readphaseone2.png',
                    ),
                    List_item(
                      name: 'الكلمة الصحيحة',
                      imagePath: 'assets/readphaseone/readphaseone3.png',
                    ),
                    List_item(
                      name: 'حروف الجر',
                      imagePath: 'assets/readphaseone/readphaseone4.png',
                    ),
                    List_item(
                      name: 'الوعي الصوتي',
                      imagePath: 'assets/readphaseone/readphaseone5.png',
                    ),
                    List_item(
                      name: 'تركيب',
                      imagePath: 'assets/readphaseone/readphaseone6.png',
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
