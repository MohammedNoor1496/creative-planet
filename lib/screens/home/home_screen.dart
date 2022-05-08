import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/page/page_keys.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/read_section_one/read_section_one.dart';

import '../../constants.dart';
import '../../store/myStore.dart';
import '../../utils/scale_util.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomeScreen extends GetView {
  final categories = [
    'أساسيات القراءة',
    'المرحلة الأولى',
    'المرحلة الثانية',
    'المرحلة الثالثة ',
    'الفهم والاستيعاب',
    'المستوى الأول',
    'المستوى الثاني',
    'المستوى الثالث',
    'المهارات الكتابية',
    'المرحلة الأولى',
    'المرحلة الثانية',
    'المرحلة الثالثة ',
  ];
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScaleUtil scU = ScaleUtil(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "الصفحة الرئيسية",
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: Container(
        // width: double.infinity / 2,
        padding: EdgeInsets.all(25),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المهارات الكتابية"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المرحلة الأولى"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المرحلة الثانية"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المرحلة الثالثة "),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("الفهم والاستيعاب"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المستوى الأول"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المستوى الثاني"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 25,
                    shadowColor: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      width: scU.scale(170),
                      height: scU.scale(170),
                      child: const Text("المستوى الثالث"),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   AssetsAudioPlayer.newPlayer().open(
                    //     Audio("assets/audios/error.mp3"),
                    //     showNotification: true,
                    //   );
                    // },
                    onTap: () {
                      var store = Provider.of<MyStore>(
                        context,
                        listen: false,
                      );
                      store.getSetionPahesQuestions(1, 1);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 25,
                      shadowColor: Colors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        width: scU.scale(170),
                        height: scU.scale(170),
                        child: const Text("أساسيات القراءة"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(PageKeys.readSectionOne);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 25,
                      shadowColor: Colors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        width: scU.scale(170),
                        height: scU.scale(170),
                        child: const Text("المرحلة الأولى"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(PageKeys.readSectionTwo);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 25,
                      shadowColor: Colors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        width: scU.scale(170),
                        height: scU.scale(170),
                        child: const Text("المرحلة الثانية"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(PageKeys.readSectionThree);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 25,
                      shadowColor: Colors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        width: scU.scale(170),
                        height: scU.scale(170),
                        child: const Text("المرحلة الثالثة "),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
