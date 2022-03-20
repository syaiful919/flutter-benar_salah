import 'package:benar_salah/ui/state/quiz_state_scope.dart';
import 'package:flutter/material.dart';

class QuizCount extends StatelessWidget {
  const QuizCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = QuizStateScope.of(context).currentIndex;
    final total = QuizStateScope.of(context).selectedQuiz.length;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        "${index + 1} / $total",
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
