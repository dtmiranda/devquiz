import 'dart:ffi';

import 'package:devquiz/challenge/widget/answer/answer_windget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/modules/question_module.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModule question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              question.questionTitle,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          ...question.answers
              .map(
                (e) => AnswerWidget(
                  isRight: e.isRight,
                  answerText: e.answerTitle,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
