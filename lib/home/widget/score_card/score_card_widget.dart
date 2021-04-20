import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../chart/chart_widget.dart';

// ignore: public_member_api_docs
class ScoreCard extends StatelessWidget {
  // ignore: public_member_api_docs
  const ScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 136.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: ChartWidget()),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos começar",
                      style: AppTextStyles.heading,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 157.0,
                      child: Text(
                        "Complete os desafios e avance em conhecimento",
                        style: AppTextStyles.body,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.20),
              blurRadius: 6.0
            ),
          ],
        ),
      ),
    );
  }
}
