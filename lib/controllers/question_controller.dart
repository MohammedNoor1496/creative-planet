import 'package:get/get.dart';
import 'package:quiz_app/models/Questions.dart';
// We use get package for our state management

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  static QuestionController find() {
    bool isQuestionControllerRegistred = Get.isRegistered<QuestionController>();
    if (!isQuestionControllerRegistred) {
      QuestionController questionController = QuestionController();
      Get.lazyPut<QuestionController>(() => questionController);
      return questionController;
    } else {
      return Get.find<QuestionController>();
    }
  }

  // Lets animated our progress bar
  static Map<int, Map<int, Map<int, Question>>> p1 = {};

  @override
  void onInit() {
    Map<int, Question> s0 = {
      1: Question(
        id: 1,
        question: "ما الكلمة التي تُشبه في إيقاعها اسم الصورة؟",
        options: ['جَمَل', 'قلب', 'فيل'],
        answer: 1,
        phase: 1,
        section: 1,
        hasAnImage: true,
        score: 2,
      ),
      // 3: Question(
      //   id: 3,
      //   question: "ما الكلمة التي تُشبه في إيقاعها اسم الصورة؟",
      //   options: ['جَمَل', 'قلب', 'فيل'],
      //   answer: 1,
      //   phase: 1,
      //   section: 1,
      //   hasAnImage: true,
      //   score: 2,
      // ),
      // 4: Question(
      //   id: 4,
      //   question: "ما الكلمة التي تُشبه في إيقاعها اسم الصورة؟",
      //   options: ['جَمَل', 'قلب', 'فيل'],
      //   answer: 1,
      //   phase: 1,
      //   section: 1,
      //   hasAnImage: true,
      //   score: 2,
      // ),
    };
    Map<int, Question> s1 = {
      2: Question(
        id: 2,
        question: " اختر الإجابة الصحيحة\........ صورةٌ جَميلة.",
        options: ['هذا', 'هَذهِ', 'هو'],
        answer: 1,
        phase: 1,
        section: 2,
        score: 2,
      ),
    };
    Map<int, Question> s2 = {
      3: Question(
        id: 3,
        question:
            "اختر الكلمة الصحيحة التي تُكمل المعنى في جُملة نَصومُ في شَهْرِ....................",
        options: ['رَمَظان', 'رَمَصان', 'رَمَضان'],
        answer: 2,
        phase: 1,
        section: 3,
        score: 2,
      ),
    };
    Map<int, Question> s3 = {
      4: Question(
        id: 4,
        question:
            "اختر الكلمة التي تُكمل المعنى في جُملة: ذَهَبَت أُمي ...........سوقِ الخُضار",
        options: ['مِنْ', 'إلى', 'في'],
        answer: 1,
        phase: 1,
        section: 4,
        score: 2,
      ),
    };
    Map<int, Question> s4 = {
      5: Question(
        id: 5,
        question:
            "اختر الكلمة التي تُكمل المعنى في جُملة: ذَهَبَت أُمي ...........سوقِ الخُضار",
        options: ['مِنْ', 'إلى', 'في'],
        answer: 1,
        phase: 1,
        section: 5,
        score: 2,
      ),
    };
    Map<int, Question> s5 = {
      6: Question(
        id: 6,
        question: " اختر صوت الحرف الأول المختلف كِتاب – كَباب – كِلاب",
        options: ['كَـ', 'كِـ', 'كِـ'],
        answer: 2,
        phase: 1,
        section: 6,
        score: 2,
      ),
    };
    Map<int, Question> s6 = {
      7: Question(
        id: 7,
        question:
            "اختر الكلمة التي تتكون من أصوات الحروف الآتية  د   - ع  -و   -م",
        options: ['دَمْعَةٌ', 'دُموعٌ', 'دَمْعٌ'],
        answer: 2,
        phase: 1,
        section: 7,
        score: 2,
      ),
    };
    Map<int, Question> s7 = {
      8: Question(
        id: 8,
        question: "اختر التحليل الصحيح لكلمة ( مُدَرِّبٌ)",
        options: ['مُدَ / رِ /بٌ', 'مُ / دَ / رِبٌ', 'مُ / دَرْ / رِ / بٌ'],
        answer: 2,
        phase: 1,
        section: 7,
        score: 2,
      ),
    };
    Map<int, Question> s8 = {};
    Map<int, Question> s9 = {};

    p1[0] = {
      0: s0,
      1: s1,
      2: s2,
      3: s3,
      4: s4,
      5: s5,
      6: s6,
      7: s7,
      8: s8,
      9: s9,
    };
  }
}
