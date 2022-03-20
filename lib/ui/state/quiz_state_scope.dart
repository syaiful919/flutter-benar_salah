import 'package:benar_salah/ui/state/quiz_state.dart';
import 'package:flutter/material.dart';

class QuizStateScope extends InheritedWidget {
  const QuizStateScope({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final QuizState data;

  static QuizState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<QuizStateScope>()!.data;
  }

  @override
  bool updateShouldNotify(QuizStateScope oldWidget) {
    return data != oldWidget.data;
  }
}
