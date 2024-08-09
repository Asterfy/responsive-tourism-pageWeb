import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/typical_header_section.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class FavoritePlaceInfo extends StatelessWidget {
  const FavoritePlaceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return widthWindow > maxWidthToWrap
        ? Row(
            children: [
              Container(
                  width: widthWindow * 0.4,
                  padding: const EdgeInsets.only(right: 5),
                  child: const TypicalHeaderSection(
                      textTitle: 'Chose Your Favourite Date To Explore')),
              const Expanded(
                // width: widthWindow * 0.43,
                child: Text(
                  "We don't just work with concrete and steel. We work people We are Approachable, with even our highest work work with concrte and steel. We work with people",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              )
            ],
          )
        : const Column(
            children: [
              TypicalHeaderSection(
                  textTitle: 'Chose Your Favourite Date To Explore'),
              Text(
                "We don't just work with concrete and steel. We work people We are Approachable, with even our highest work work with concrte and steel. We work with people",
                style: TextStyle(color: Colors.black, fontSize: 17),
              )
            ],
          );
  }
}
