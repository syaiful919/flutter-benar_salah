import 'package:benar_salah/core/service/quiz_service.dart';
import 'package:benar_salah/ui/state/quiz_state.dart';
import 'package:benar_salah/ui/state/quiz_state_scope.dart';
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
  QuizState _data = QuizState(
    allQuiz: [],
    selectedQuiz: [],
    answerMap: {},
    currentIndex: 0,
  );

  @override
  void initState() {
    super.initState();
    _initData();
  }

  void _initData() {
    final allQuiz = widget.service.getQuiz();

    setState(() {
      _data = _data.copyWith(allQuiz: allQuiz);
    });

    _randomizeQuiz();
  }

  Future<void> _randomizeQuiz() async {
    final allQuiz = _data.allQuiz;
    allQuiz.shuffle();

    final selectedQuiz = allQuiz.take(5).toList();

    setState(() {
      _data = _data.copyWith(selectedQuiz: selectedQuiz);
    });
  }

  void selectAnswer(bool isCorrect) {
    final newAnswerMap = {
      ..._data.answerMap,
      _data.currentIndex: isCorrect,
    };

    final isLastQuestion = _data.currentIndex == _data.selectedQuiz.length - 1;
    final nextIndex = _data.currentIndex + 1;

    setState(() {
      _data = _data.copyWith(
        currentIndex: isLastQuestion ? _data.currentIndex : nextIndex,
        answerMap: newAnswerMap,
      );
    });
  }

  void resetQuiz() {
    setState(() {
      _data = _data.copyWith(
        selectedQuiz: [],
        currentIndex: 0,
        answerMap: {},
      );
    });

    _randomizeQuiz();
  }

  void resetAnswer() {
    setState(() {
      _data = _data.copyWith(
        currentIndex: 0,
        answerMap: {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return QuizStateScope(
      data: _data,
      child: widget.child,
    );
  }
}
