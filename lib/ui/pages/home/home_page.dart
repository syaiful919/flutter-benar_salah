import 'package:flutter/material.dart';
import 'package:benar_salah/ui/widget/base_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToQuizPage(BuildContext context) {
    // TODO: push to QuizPage
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 100),
            BaseButton(
              text: "Mulai",
              onPressed: () => _goToQuizPage(context),
            ),
          ],
        ),
      ),
    );
  }
}
