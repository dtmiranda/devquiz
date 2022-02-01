import 'package:flutter/widgets.dart';

class AnswerModule {
  final String answerTitle;
  final bool isRight;

  AnswerModule({
    required this.answerTitle,
    this.isRight = false,
  });
}
