import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../score_card/score_card_widget.dart';

// ignore: public_member_api_docs
class AppBarWidget extends PreferredSize {
  // ignore: public_member_api_docs
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            margin: EdgeInsets.only(bottom: 45.0),
            height: 250.0,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  height: 161.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: "João Pedro",
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 58.0,
                        height: 58.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: AppColors.stroke.withOpacity(0.8),
                          ),
                          image: DecorationImage(
                            image: NetworkImage("https://avatars.githubusercontent.com/u/49308697?v=4"),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.25),
                  child: ScoreCard(),
                )
              ],
            ),
          ),
        );
}
