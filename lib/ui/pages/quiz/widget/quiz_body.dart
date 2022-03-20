import 'package:benar_salah/ui/pages/quiz_result/quiz_result_page.dart';
import 'package:benar_salah/ui/state/quiz_state_scope.dart';
import 'package:benar_salah/ui/state/quiz_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:benar_salah/ui/widget/base_button.dart';

class QuizBody extends StatelessWidget {
  const QuizBody({Key? key}) : super(key: key);

  void _selectAnswer(BuildContext context, bool isCorrect) {
    QuizStateWidget.of(context).selectAnswer(isCorrect);

    final index = QuizStateScope.of(context).currentIndex;
    final total = QuizStateScope.of(context).selectedQuiz.length;

    if (index == total - 1) _goToResultPage(context);
  }

  void _goToResultPage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const QuizResultPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final index = QuizStateScope.of(context).currentIndex;
    final quiz = QuizStateScope.of(context).selectedQuiz[index];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  quiz.question,
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseButton(
                  text: "Salah",
                  color: Colors.red,
                  onPressed: () {
                    _selectAnswer(context, false == quiz.isTrue);
                  },
                ),
                const SizedBox(height: 20),
                BaseButton(
                  text: "Benar",
                  color: Colors.green,
                  onPressed: () {
                    _selectAnswer(context, true == quiz.isTrue);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
