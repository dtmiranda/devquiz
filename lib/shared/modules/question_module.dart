import 'dart:convert';

import 'package:devquiz/shared/modules/answer_module.dart';

class QuestionModule {
  final String questionTitle;
  final List<AnswerModule> answers;

  QuestionModule({
    required this.questionTitle,
    required this.answers,
  }) : assert(answers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'questionTitle': questionTitle,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModule.fromMap(Map<String, dynamic> map) {
    return QuestionModule(
      questionTitle: map['questionTitle'],
      answers: List<AnswerModule>.from(
          map['answers']?.map((x) => AnswerModule.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModule.fromJson(String source) =>
      QuestionModule.fromMap(json.decode(source));
}
