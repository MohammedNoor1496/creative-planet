import 'package:get/get.dart';
import 'package:quiz_app/page/page_keys.dart';
import 'package:quiz_app/screens/OnBoardingPage/onBoardingPage.dart';
import 'package:quiz_app/screens/quiz/quiz_middleware.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen_binding.dart';
import 'package:quiz_app/screens/read_section_one/read_section_one.dart';
import 'package:quiz_app/screens/read_section_one/read_section_one_binding.dart';
import 'package:quiz_app/screens/read_section_two/read_section_two.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
        name: PageKeys.quizScreen,
        page: () => QuizScreen(),
        binding: QuizScreenBindings(),
        middlewares: [QuizMiddelware()]),
    GetPage(
        name: PageKeys.readSectionOne,
        page: () => ReadSectionOne(),
        binding: ReadSectionOneBindings()),
    GetPage(
      name: PageKeys.onBording,
      page: () => OnBoardingPage(),
    ),
    GetPage(
      name: PageKeys.readSectionTwo,
      page: () => ReadSectionTwo(),
    ),
  ];
}
