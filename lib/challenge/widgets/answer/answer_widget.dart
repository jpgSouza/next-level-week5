import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String? text;
  final bool? isCorrect;
  final bool? isSelected;
  const AnswerWidget({
    Key? key,
    this.text,
    this.isCorrect = false,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isCorrect! ? AppColors.lightGreen : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: isCorrect!
            ? Border.all(
                color: AppColors.green,
              )
            : Border.all(
                color: AppColors.cardStroke,
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              text!,
              style: isCorrect! ? AppTextStyles.bodyDarkGreen
               : AppTextStyles.body,
            ),
          ),
          Flexible(
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                color: isCorrect! ? AppColors.darkGreen : Colors.white,
                border: isCorrect!
                    ? null
                    : Border.all(
                        color: AppColors.border,
                      ),
                shape: BoxShape.circle,
                boxShadow: isCorrect!
                    ? [
                        BoxShadow(
                          color: AppColors.darkGreen.withOpacity(0.4),
                          blurRadius: 12.0,
                        )
                      ]
                    : null,
              ),
              child: Icon(
                Icons.check,
                size: 16.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
