import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widget/level_button_widget/level_button_widget.dart';
import 'package:DevQuiz/home/widget/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

import 'widget/appbar/appbar_widget.dart';

// ignore: public_member_api_docs
class HomePage extends StatefulWidget {
  // ignore: public_member_api_docs
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  text: "Fácil",
                ),
                LevelButtonWidget(
                  text: "Médio",
                ),
                LevelButtonWidget(
                  text: "Difícil",
                ),
                LevelButtonWidget(
                  text: "Perito",
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 22.0,
              crossAxisSpacing: 16.0,
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}
