import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String quizTitle;
  final String quizCompleted;
  final double percent;
  const QuizCardWidget({
    Key? key,
    required this.quizTitle,
    required this.quizCompleted,
    required this.percent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(
          color: AppColors.border,
        )),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            quizTitle,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  quizCompleted,
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(
                  progressValue: percent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
