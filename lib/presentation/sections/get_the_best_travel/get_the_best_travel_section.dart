import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/get_the_best_travel/images_side_best_travel.dart';
import 'package:tourism_responsive_page/presentation/sections/get_the_best_travel/info_side_best_travel.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class GetTheBestTravelSection extends StatelessWidget {
  const GetTheBestTravelSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
        width: widthWindow,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 70),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        color: const Color(0xffF1EBE6),
        child: widthWindow > maxWidthToWrap
            ? Row(
                children: [
                  SizedBox(
                      width: widthWindow * 0.5,
                      child: const InfoSideBestTravel()),
                  SizedBox(
                      width: widthWindow * 0.4,
                      child: const ImagesSideBestTravel()),
                ],
              )
            : const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoSideBestTravel(),
                  Center(child: ImagesSideBestTravel())
                ],
              ));
  }
}
