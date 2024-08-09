import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/get_to_know_us_text.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/responsive_title.dart';

class TypicalHeaderSection extends StatelessWidget {
  final String textTitle;
  const TypicalHeaderSection({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GetToKnowUsText(),
        ResponsiveTitle(text: textTitle),
      ],
    );
  }
}
