import 'package:benar_salah/core/model/quiz.dart';

class QuizState {
  final List<Quiz> selectedQuiz;
  final List<Quiz> allQuiz;
  final Map<int, bool> answerMap;
  final int currentIndex;

  QuizState({
    required this.allQuiz,
    required this.selectedQuiz,
    required this.answerMap,
    required this.currentIndex,
  });

  QuizState copyWith({
    List<Quiz>? allQuiz,
    List<Quiz>? selectedQuiz,
    Map<int, bool>? answerMap,
    int? currentIndex,
  }) {
    return QuizState(
      allQuiz: allQuiz ?? this.allQuiz,
      selectedQuiz: selectedQuiz ?? this.selectedQuiz,
      answerMap: answerMap ?? this.answerMap,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
