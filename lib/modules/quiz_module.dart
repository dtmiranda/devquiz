import 'package:devquiz/modules/question_module.dart';

enum Level {
  easy,
  medio,
  difficult,
  expert,
}

class QuizModule {
  final String quizTitle;
  final List<QuestionModule> questions;
  final int questionAnswered;
  final String image;
  final Level level;

  QuizModule({
    required this.quizTitle,
    this.questionAnswered = 0,
    required this.image,
    required this.level,
    required this.questions,
  });
}
