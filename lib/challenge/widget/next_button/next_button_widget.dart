import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:devquiz/core/core.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroudColor;
  final Color fontColor;
  final Color borderColor;

  NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroudColor,
    required this.fontColor,
    required this.borderColor,
  }) : super(key: key);

  NextButtonWidget.green({required String label})
      : this.backgroudColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.label = label;

  NextButtonWidget.white({required String label})
      : this.backgroudColor = AppColors.white,
        this.fontColor = AppColors.black,
        this.borderColor = AppColors.border,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroudColor,
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
