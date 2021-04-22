import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String? title;
  const QuizWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 250.0,
            child: Text(
              title!,
              style: AppTextStyles.heading,
            ),
          ),
          const SizedBox(height: 24.0),
          AnswerWidget(
            text: "Kit de desenvolvimento de interface de usuário",
            isCorrect: true,
          )
        ],
      ),
    );
  }
}
