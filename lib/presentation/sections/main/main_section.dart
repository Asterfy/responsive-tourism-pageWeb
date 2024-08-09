import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/main/image_side.dart';
import 'package:tourism_responsive_page/presentation/sections/main/info_side.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: (widthScreen > maxWidthToWrap)
          ? Row(
              children: [
                SizedBox(
                    width: widthScreen * 0.4,
                    child: const InfoSideMainSection()),
                SizedBox(
                  width: widthScreen * 0.4,
                  child: const ImageSideMainSection(),
                )
              ],
            )
          : const Column(
              children: [InfoSideMainSection(), ImageSideMainSection()],
            ),
    );
  }
}
