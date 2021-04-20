import 'package:flutter/material.dart';

import '../core/core.dart';

// ignore: public_member_api_docs
class SplashPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Center(
          child: Image.asset(
            AppImages.logo,
          ),
        ),
      ),
    );
  }
}
