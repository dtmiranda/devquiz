import 'dart:convert';

import 'package:flutter/widgets.dart';

class AnswerModule {
  final String answerTitle;
  final bool isRight;

  AnswerModule({
    required this.answerTitle,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'answerTitle': answerTitle,
      'isRight': isRight,
    };
  }

  factory AnswerModule.fromMap(Map<String, dynamic> map) {
    return AnswerModule(
      answerTitle: map['answerTitle'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModule.fromJson(String source) =>
      AnswerModule.fromMap(json.decode(source));
}
