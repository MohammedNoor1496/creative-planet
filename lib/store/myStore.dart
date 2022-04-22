import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/models/Questions.dart';

class MyStore extends ChangeNotifier {
  List<Question> _questions;
  MyStore() {
    _questions = sample_data;

    getSetionPahesQuestions(1, 1);
  }

  Future<List<Question>> getSetionPahesQuestions(
      int setionId, int phaseId) async {
    List<Question> questions = _questions
        .where((question) =>
            question.phase == phaseId && question.section == setionId)
        .toList();
    print(questions);
    return questions;
  }
}
