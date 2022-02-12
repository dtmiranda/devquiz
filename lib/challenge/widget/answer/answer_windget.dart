import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/modules/answer_module.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModule answer;
  final VoidCallback onTap;
  final bool isSelected;

  const AnswerWidget({
    Key? key,
    required this.answer,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  Color get _selectedColorRight =>
      answer.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      answer.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _slectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide(
                  color: isSelected
                      ? _selectedBorderCardRight
                      : AppColors.border))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  answer.answerTitle,
                  style:
                      isSelected ? _selectedTextStyleRight : AppTextStyles.body,
                ),
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: isSelected ? _selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.fromBorderSide(BorderSide(
                        color: isSelected
                            ? _selectedBorderRight
                            : AppColors.border))),
                child: isSelected
                    ? Icon(
                        _slectedIconRight,
                        size: 16,
                        color: Colors.white,
                      )
                    : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
