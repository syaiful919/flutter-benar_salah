import 'package:benar_salah/core/model/quiz.dart';
import 'package:flutter/material.dart';
import 'package:benar_salah/ui/widget/base_button.dart';

class QuizBody extends StatelessWidget {
  const QuizBody({Key? key}) : super(key: key);

  void _selectAnswer(BuildContext context, bool isCorrect) {
    // TODO: add action
  }

  void _goToResultPage(BuildContext context) {
    // TODO: navigate to QuizResultPage
  }

  @override
  Widget build(BuildContext context) {
    // TODO: dummy data, update later
    const quiz = Quiz(
      id: 1,
      question: "Angka 1 termasuk bilangan prima",
      isTrue: false,
    );

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
