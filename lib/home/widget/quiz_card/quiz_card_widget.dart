import 'package:DevQuiz/shared/widgets/linear_progress_indicator_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.cardStroke),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.data,
            width: 40.0,
            height: 40.0,
          ),
          const SizedBox(height: 20.0),
          Text(
            "Gerenciamento de Estado",
            style: AppTextStyles.heading15,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "3 de 10",
                style: AppTextStyles.body11,
              ),
              const SizedBox(width: 25.0),
              Expanded(
                child: LinearProgressIndicatorWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
