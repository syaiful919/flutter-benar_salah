// TODO: 4. Host the data using the QuizStateScope

// TODO: 5. Provide APIs to modify the data

import 'package:benar_salah/core/service/quiz_service.dart';
import 'package:flutter/material.dart';

class QuizStateWidget extends StatefulWidget {
  final QuizService service;
  final Widget child;

  const QuizStateWidget({
    Key? key,
    required this.service,
    required this.child,
  }) : super(key: key);

  static _QuizStateWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<_QuizStateWidgetState>()!;
  }

  @override
  State<QuizStateWidget> createState() => _QuizStateWidgetState();
}

class _QuizStateWidgetState extends State<QuizStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
