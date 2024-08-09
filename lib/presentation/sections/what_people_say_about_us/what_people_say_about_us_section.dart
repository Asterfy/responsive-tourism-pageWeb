import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/what_people_say_about_us/what_people_say_cards_side.dart';
import 'package:tourism_responsive_page/presentation/sections/what_people_say_about_us/what_people_say_description_side.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class WhatPeopleSayAboutUsSection extends StatelessWidget {
  const WhatPeopleSayAboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: widthWindow > maxWidthToWrap
          ? const Row(
              children: [
                WhatPeopleSayDescriptionSide(),
                Spacer(),
                WhatPeopleSayCardsSide()
              ],
            )
          : const Column(
              children: [
                WhatPeopleSayDescriptionSide(wraped: true),
                SizedBox(height: 80),
                WhatPeopleSayCardsSide(wraped: true)
              ],
            ),
    );
  }
}
