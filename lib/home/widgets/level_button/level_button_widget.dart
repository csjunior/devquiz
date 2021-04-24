import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonEasy,
      "borderColor": AppColors.levelButtonBorderEasy,
      "fontColor": AppColors.levelButtonTextEasy,
    },
    "Médio": {
      "color": AppColors.levelButtonMiddle,
      "borderColor": AppColors.levelButtonBorderMiddle,
      "fontColor": AppColors.levelButtonTextMiddle,
    },
    "Difícil": {
      "color": AppColors.levelButtonHard,
      "borderColor": AppColors.levelButtonBorderHard,
      "fontColor": AppColors.levelButtonTextHard,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  LevelButtonWidget({
    Key? key,
    required this.label,
  })   : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
          ),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 6,
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: fontColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
