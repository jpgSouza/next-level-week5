import 'package:flutter/material.dart';

import '../../../core/core.dart';

// ignore: public_member_api_docs
class ChartWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80.0,
              width: 80.0,
              child: CircularProgressIndicator(
                strokeWidth: 10.0,
                value: 0.75,
                backgroundColor: AppColors.chartSecondary,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.chartPrimary,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "75%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
