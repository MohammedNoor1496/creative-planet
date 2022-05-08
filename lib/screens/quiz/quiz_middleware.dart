import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';
class QuizMiddelware extends GetMiddleware{
  @override
  GetPageBuilder onPageBuildStart(GetPageBuilder page) {
    final controller = QuizScreenController.find();
  controller.isTimerLocked = false;
  controller.timer();
  controller.questionNumber.value = 1;
    return super.onPageBuildStart(page);
  }

}