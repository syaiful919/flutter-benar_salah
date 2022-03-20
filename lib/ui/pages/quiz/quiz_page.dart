import 'package:flutter/material.dart';
import 'package:benar_salah/ui/pages/quiz/widget/quiz_body.dart';
import 'package:benar_salah/ui/pages/quiz/widget/quiz_count.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Benar atau Salah"),
        actions: const [QuizCount()],
      ),
      body: const QuizBody(),
    );
  }
}
