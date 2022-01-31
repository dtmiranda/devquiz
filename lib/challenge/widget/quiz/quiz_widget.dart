import 'dart:ffi';

import 'package:devquiz/challenge/widget/answer/answer_windget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String quizTitle;
  const QuizWidget({Key? key, required this.quizTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 8),
            child: Text(
              quizTitle,
              style: AppTextStyles.heading,
            ),
          ),
          AnswerWidget(
              isRight: true,
              isSelected: true,
              answerText:
                  "Possibilita a criação de aplicativos compilados nativamente."),
          AnswerWidget(
              isRight: false,
              isSelected: true,
              answerText:
                  "Possibilita a criação de aplicativos compilados nativamente."),
          AnswerWidget(
              answerText:
                  "Possibilita a criação de aplicativos compilados nativamente."),
          AnswerWidget(
              answerText:
                  "Possibilita a criação de aplicativos compilados nativamente."),
          AnswerWidget(
              answerText:
                  "Possibilita a criação de aplicativos compilados nativamente.")
        ],
      ),
    );
  }
}
