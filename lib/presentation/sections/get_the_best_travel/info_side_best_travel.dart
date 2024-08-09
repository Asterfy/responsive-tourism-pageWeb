import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/card_best_travle.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_button.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/get_to_know_us_text.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class InfoSideBestTravel extends StatelessWidget {
  const InfoSideBestTravel({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.symmetric(
          horizontal: widhtWindow > maxWidthToWrap ? 90 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GetToKnowUsText(),
          Text('Get The Best Travel Experience',
              style: TextStyle(
                  fontSize: widhtWindow > mobileWidth ? 50 : widhtWindow * 0.06,
                  color: const Color(0xff363539),
                  fontWeight: FontWeight.bold)),
          CardBestTravel(
              linkImg: 'assets/images/airplane_animated.png',
              title: 'Best of Hotel',
              description:
                  "We don't just work with concrete and steel. We work We are Approachable, with even our highest",
              sizeImg: widhtWindow > mobileWidth ? 65 : 50,
              fontSize: widhtWindow > mobileWidth ? 25 : 20,
              radiusImg: 40),
          CardBestTravel(
              linkImg: 'assets/images/earth_animated.png',
              title: 'Friendly price',
              description:
                  "We don't just work with concrete and steel. We work We are Approachable, with even our highest",
              sizeImg: widhtWindow > mobileWidth ? 65 : 50,
              fontSize: widhtWindow > mobileWidth ? 25 : 20,
              radiusImg: 40),
          const CustomButton(text: 'Find Out More', fontSize: 16, size: 20)
        ],
      ),
    );
  }
}
