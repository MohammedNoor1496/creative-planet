import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatefulWidget {
  // final int sectionId;
  // final int phaseId;
  // QuizScreen(this.sectionId, this.phaseId);
  static const path = '/quiz-screen';

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int setcionId;
  int phaseId;
  @override
  void initState() {
    // print('section Id ${widget.sectionId}');
    // print('phase Id ${widget.phaseId}');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final data = ModalRoute.of(context).settings.arguments as Map;
    // print(data);
    setState(
      () {
        setcionId = data['sectionId'];
        phaseId = data['phaseId'];
      },
    );
    // print(data);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("تخطي")),
        ],
      ),
      body: Body(
        phaseId: phaseId,
        sectionId: setcionId,
      ),
    );
  }
}
