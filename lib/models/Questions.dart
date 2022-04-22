class Question {
  final int id, answer, phase, section;
  final String question;
  final List<String> options;
  bool hasAnImage = false;
  Question({
    this.id,
    this.question,
    this.answer,
    this.options,
    this.phase,
    this.section,
    this.hasAnImage,
  });
}

List<Question> sample_data = [
  Question(
    id: 1,
    question: "ما الكلمة التي تُشبه في إيقاعها اسم الصورة؟",
    options: ['جَمَل', 'قلب', 'فيل'],
    answer: 1,
    phase: 1,
    section: 1,
    hasAnImage: true,
  ),
  Question(
    id: 2,
    question: " اختر الإجابة الصحيحة\........ صورةٌ جَميلة.",
    options: ['هذا', 'هَذهِ', 'هو'],
    answer: 1,
    phase: 1,
    section: 2,
  ),
  Question(
    id: 3,
    question:
        "اختر الكلمة الصحيحة التي تُكمل المعنى في جُملة نَصومُ في شَهْرِ....................",
    options: ['رَمَظان', 'رَمَصان', 'رَمَضان'],
    answer: 2,
    phase: 1,
    section: 3,
  ),
  Question(
    id: 4,
    question:
        "اختر الكلمة التي تُكمل المعنى في جُملة: ذَهَبَت أُمي ...........سوقِ الخُضار",
    options: ['مِنْ', 'إلى', 'في'],
    answer: 1,
    phase: 1,
    section: 4,
  ),
  Question(
    id: 5,
    question: "اختر صوت الحرف الأول المشترك في الكلمات غُصْن   - غُروب – غُيوم",
    options: ['غَـ', 'غِـ', 'غُـ'],
    answer: 2,
    phase: 1,
    section: 5,
  ),
  Question(
    id: 6,
    question: " اختر صوت الحرف الأول المختلف كِتاب – كَباب – كِلاب",
    options: ['كَـ', 'كِـ', 'كِـ'],
    answer: 2,
    phase: 1,
    section: 5,
  ),
  Question(
    id: 7,
    question: "اختر الكلمة التي تتكون من أصوات الحروف الآتية  د   - ع  -و   -م",
    options: ['دَمْعَةٌ', 'دُموعٌ', 'دَمْعٌ'],
    answer: 2,
    phase: 1,
    section: 6,
  ),
  Question(
    id: 8,
    question: "اختر التحليل الصحيح لكلمة ( مُدَرِّبٌ)",
    options: ['مُدَ / رِ /بٌ', 'مُ / دَ / رِبٌ', 'مُ / دَرْ / رِ / بٌ'],
    answer: 2,
    phase: 1,
    section: 6,
  ),
];
