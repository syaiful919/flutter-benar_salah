import 'package:benar_salah/ui/pages/quiz/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:benar_salah/ui/widget/base_button.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({Key? key}) : super(key: key);

  void _resetQuiz(BuildContext context) {
    // TODO: add action
  }

  Future<bool> _onWillPop(BuildContext context) async {
    _resetQuiz(context);
    return Future.value(true);
  }

  void _navigateBack(BuildContext context) {
    _resetQuiz(context);
    Navigator.of(context).pop();
  }

  void _playAgain(BuildContext context) {
    // TODO: add action

    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const QuizPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: dummy data, remove later
    const correctAnswerCount = 4;

    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Kamu behasil menjawab $correctAnswerCount soal dengan benar",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 30),
              BaseButton(
                text: "Ulangi Kuis",
                onPressed: () => _playAgain(context),
              ),
              const SizedBox(height: 10),
              BaseButton(
                text: "Kembali",
                color: Colors.white,
                textColor: Colors.blue,
                onPressed: () => _navigateBack(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
