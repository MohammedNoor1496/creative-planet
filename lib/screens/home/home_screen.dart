import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

import '../../constants.dart';
import '../../utils/scale_util.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomeScreen extends StatelessWidget {
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
                    onTap: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/audios/error.mp3"),
                        showNotification: true,
                      );
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
                      Navigator.of(context).pushNamed(QuizScreen.path);
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
                  Card(
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
                  Card(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
