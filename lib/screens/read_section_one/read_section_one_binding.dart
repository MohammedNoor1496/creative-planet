import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_controller.dart';

class ReadSectionOneBindings extends Bindings{
  @override
  void dependencies() {
  QuizScreenController.find();
   QuestionController.find();
  }
}