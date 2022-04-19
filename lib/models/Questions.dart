class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": " اختر الإجابة الصحيحة\........ صورةٌ جَميلة.",
    "options": ['هذا', 'هَذهِ', 'هو'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "اختر الكلمة الصحيحة التي تُكمل المعنى في جُملة نَصومُ في شَهْرِ....................",
    "options": ['رَمَظان', 'رَمَصان', 'رَمَضان'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "اختر الكلمة التي تُكمل المعنى في جُملة: ذَهَبَت أُمي ...........سوقِ الخُضار",
    "options": ['مِنْ', 'إلى', 'في'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "اختر التحليل الصحيح لكلمة ( مُدَرِّبٌ)",
    "options": ['مُدَ / رِ /بٌ', 'مُ / دَ / رِبٌ', 'مُ / دَرْ / رِ / بٌ'],
    "answer_index": 2,
  },
];
