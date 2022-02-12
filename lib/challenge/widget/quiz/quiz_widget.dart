import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widget/answer/answer_windget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/modules/answer_module.dart';
import 'package:devquiz/shared/modules/question_module.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModule question;
  final ValueChanged<bool> onSelected;
  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  var indexSelected = -1;

  AnswerModule answer(int index) => widget.question.answers[index];
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
              widget.question.questionTitle,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              answer: answer(i),
              isDisabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: (value) {
                indexSelected = i;
                //widget.onChange();
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((_) => widget.onSelected(value));
              },
            )
        ],
      ),
    );
  }
}
