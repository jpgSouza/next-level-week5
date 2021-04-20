import 'package:flutter/material.dart';

import '../splash/splash_page.dart';

// ignore: public_member_api_docs
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: SplashPage(),
    );
  }
}
