import 'package:benar_salah/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: 6. Insert QuizStateWidget into the widget tree
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Benar atau Salah',
      home: HomePage(),
    );
  }
}
