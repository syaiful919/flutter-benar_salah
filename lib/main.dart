import 'package:benar_salah/core/service/quiz_service.dart';
import 'package:benar_salah/ui/pages/home/home_page.dart';
import 'package:benar_salah/ui/state/quiz_state_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const QuizStateWidget(
      service: QuizService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Benar atau Salah',
        home: HomePage(),
      ),
    );
  }
}
