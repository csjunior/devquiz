import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int lenght;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.lenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentPage",
                  style: AppTextStyles.heading,
                ),
                Text(
                  " de $lenght",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            ProgressIndicatorWidget(value: (currentPage / lenght)),
          ],
        ),
      ),
    );
  }
}
