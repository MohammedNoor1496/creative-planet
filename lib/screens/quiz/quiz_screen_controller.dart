import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/score/score_screen.dart';

class QuizScreenController extends GetxController {
  static QuizScreenController find() {
    bool isQuizScreenControllerRegistred =
        Get.isRegistered<QuizScreenController>();
    if (!isQuizScreenControllerRegistred) {
      QuizScreenController quizScreenController = QuizScreenController();
      Get.lazyPut<QuizScreenController>(() => quizScreenController);
      return quizScreenController;
    } else {
      return Get.find<QuizScreenController>();
    }
  }

  RxInt questionNumber = RxInt(-1);
  int length = 0;
  RxDouble progress = RxDouble(0);
  // so that we can access our animation outside

  PageController pageController = PageController();
  int sectionId = -1;
  int phaseId = -1;

  RxBool isAnswered = RxBool(false);

  int correctAns;

  int selectedAns;

  int numOfCorrectAns = 0;

  // called immediately after the widget is allocated memory

  // Our animation duration is 60 s
  // so our plan is to fill the progress bar within 60s

  // // called just before the Controller is deleted from memory
  bool isTimerLocked = true;

  void timer() async {
    if (!isTimerLocked) {
      await Future.delayed(Duration(seconds: 1), () {
        progress++;
        if (progress >= 60) {
          nextQuestion();
        }else{
      timer();
        }
      });
    }
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    isAnswered.value = true;
    correctAns = question.answer;
    selectedAns = selectedIndex;
    AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

    if (correctAns != selectedAns) {
      _assetsAudioPlayer.open(
        Audio("assets/audios/error.mp3"),
        showNotification: true,
      );
    }
    if (correctAns == selectedAns) {
      _assetsAudioPlayer.open(
        Audio("assets/audios/success.mp3"),
        showNotification: true,
      );
      Future.delayed(
        Duration(seconds: 2),
        () {
          nextQuestion();
        },
      );
      numOfCorrectAns++;
    }

    // It will stop the counter
    // _animationController.stop();

    // Once user select an ans after 3s it will go to the next qn
  }

  void nextQuestion() {
    length = 0;
    if (QuestionController.p1[phaseId] != null) {
      if (QuestionController.p1[phaseId][sectionId] != null) {
        length = QuestionController.p1[phaseId][sectionId].length;
      }
    }
    if (questionNumber.value != length) {
      isAnswered.value = false;
      progress.value = 0;
      questionNumber++;
      pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
      timer();

      // Reset the counter
      // _animationController.reset();
      // Then start it again
      // Once timer is finish go to the next qn
      // _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      isTimerLocked = true;
      Get.to(ScoreScreen());
    }
  }
}
