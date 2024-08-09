import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/travel_place/travel_place_imagen.dart';
import 'package:tourism_responsive_page/presentation/sections/travel_place/travel_place_info.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/typical_header_section.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class TravelPlaceSection extends StatelessWidget {
  const TravelPlaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return widthWindow > maxWidthToWrap
        ? Container(
            margin: const EdgeInsets.only(top: 90),
            child: Row(
              children: [
                SizedBox(
                  width: widthWindow * 0.25,
                  child: const TypicalHeaderSection(
                      textTitle: 'Travel place for Your & your Family'),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: widthWindow * 0.25,
                    child: const TravelPlaceImagen()),
                SizedBox(
                    width: widthWindow * 0.3, child: const TravelPlaceInfo())
              ],
            ),
          )
        : Container(
            margin: const EdgeInsets.only(top: 90),
            child: const Column(
              children: [
                TypicalHeaderSection(
                    textTitle: 'Travel place for Your & your Family'),
                TravelPlaceImagen(),
                TravelPlaceInfo()
              ],
            ),
          );
  }
}
