import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'level_button_config.dart';

// ignore: public_member_api_docs
class LevelButtonWidget extends StatelessWidget {
  final String? text;
  // ignore: public_member_api_docs
  LevelButtonWidget({
    Key? key,
    this.text,
  })  : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(text)),
        super(key: key);

  Color get color => LevelButtonConfig.config[text]!['color']!;
  Color get strokeColor => LevelButtonConfig.config[text]!['strokeColor']!;
  Color get textColor => LevelButtonConfig.config[text]!['textColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
        border: Border.all(color: strokeColor),
        color: color,
      ),
      child: Text(
        text!,
        style: GoogleFonts.notoSans(
          fontSize: 13.0,
          color: textColor,
        ),
      ),
    );
  }
}
