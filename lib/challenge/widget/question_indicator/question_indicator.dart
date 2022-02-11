import 'package:flutter/material.dart';

import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentPage",
                  style: AppTextStyles.bodyBold,
                ),
                Text(
                  "de $length",
                  style: AppTextStyles.body,
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(progressValue: currentPage / length)
          ],
        ),
      ),
    );
  }
}
