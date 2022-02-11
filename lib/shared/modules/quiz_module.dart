import 'dart:convert';

import 'package:devquiz/shared/modules/question_module.dart';

enum Level {
  easy,
  medium,
  difficult,
  expert,
}

extension LevelStringExtention on String {
  Level get levelParce => {
        "easy": Level.easy,
        "mediun": Level.medium,
        "difficult": Level.difficult,
        "expert": Level.expert
      }[this]!;
}

extension LevelExtention on Level {
  String get parce => {
        Level.easy: "easy",
        Level.medium: "medium",
        Level.difficult: "difficult",
        Level.expert: "expert"
      }[this]!;
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

  Map<String, dynamic> toMap() {
    return {
      'quizTitle': quizTitle,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAnswered': questionAnswered,
      'image': image,
      'level': level.parce,
    };
  }

  factory QuizModule.fromMap(Map<String, dynamic> map) {
    return QuizModule(
      quizTitle: map['quizTitle'] ?? '',
      questions: List<QuestionModule>.from(
          map['questions']?.map((x) => QuestionModule.fromMap(x))),
      questionAnswered: map['questionAnswered']?.toInt() ?? 0,
      image: map['image'] ?? '',
      level: map['level'].toString().levelParce,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModule.fromJson(String source) =>
      QuizModule.fromMap(json.decode(source));
}
