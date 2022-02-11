import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:devquiz/shared/modules/user_module.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModule user;

  AppBarWidget({required this.user})
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              //decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Text("Ola, ", style: AppTe xtStyles.title),
                        //Text("Samuel", style: AppTextStyles.titleBold),

                        Text.rich(TextSpan(
                          text: "Ola, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: user.userName,
                              style: AppTextStyles.titleBold,
                            )
                          ],
                        )),

                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(user.photoUrl),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
                ],
              ),
            ));
}
