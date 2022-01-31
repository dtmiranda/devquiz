import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double progressValue;
  const ProgressIndicatorWidget({Key? key, required this.progressValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        value: progressValue,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary));
  }
}
