import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_button.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/typical_header_section.dart';

class WhatPeopleSayDescriptionSide extends StatelessWidget {
  final bool wraped;
  const WhatPeopleSayDescriptionSide({super.key, this.wraped = false});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(right: 20),
      width: wraped ? widthWindow : widthWindow * 0.4,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TypicalHeaderSection(textTitle: 'What People\nSay About Us'),
          SizedBox(height: 10),
          Text(
            "We don't just work with concrete and steel. We are Approachable, with ever our highest concrete and steel We work with people",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(height: 20),
          CustomButton(text: 'FIND OUT MORE', fontSize: 18, size: 25)
        ],
      ),
    );
  }
}
