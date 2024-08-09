import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/card_opinion.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class WhatPeopleSayCardsSide extends StatelessWidget {
  final bool wraped;
  const WhatPeopleSayCardsSide({super.key, this.wraped = false});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CardOpinion(
            linkImgProfile: 'assets/images/business_man.jpg',
            name: 'Watson Karm',
            opinion:
                "We don’t just work with concrete and steel. We are Approachable, with even our highest concrete and steel. We work with people concrete",
            stars: 5,
            sizeStars: widthWindow > mobileWidth ? 30 : 23,
            widthCard: wraped ? widthWindow * 0.8 : widthWindow * 0.4,
            profession: 'Fementum'),
        // const SizedBox(height: 20),
        // CardOpinion(
        //     linkImgProfile: 'assets/images/business_man.jpg',
        //     name: 'Watson Karm',
        //     opinion:
        //         "We don’t just work with concrete and steel. We are Approachable, with even our highest concrete and steel. We work with people concrete",
        //     stars: 5,
        //     widthCard: widthWindow * 0.5,
        //     profession: 'Fementum'),
      ],
    );
  }
}
