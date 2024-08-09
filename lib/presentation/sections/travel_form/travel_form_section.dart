import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/card_form_travel.dart';
import 'package:tourism_responsive_page/presentation/widgets/search_button_travel_form.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class TravelFormSection extends StatelessWidget {
  const TravelFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return widthWindow > maxWidthToWrap
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
            child: Row(
              children: [
                const Expanded(
                    child: CardFormTravel(
                        text: 'Location',
                        description: 'Where To Next?',
                        icon: Icons.location_on,
                        widthCard: 200,
                        heightCard: 90,
                        fontSizeTtile: 17,
                        fontSizeDescription: 14,
                        iconContainerSize: 50,
                        iconSize: 30,
                        rounded: true)),
                const Expanded(
                  child: CardFormTravel(
                      text: 'Activity',
                      description: 'Select Activity',
                      icon: Icons.directions_run,
                      widthCard: 200,
                      heightCard: 90,
                      fontSizeTtile: 17,
                      fontSizeDescription: 14,
                      iconContainerSize: 50,
                      iconSize: 30),
                ),
                const Expanded(
                  child: CardFormTravel(
                      text: 'Tour',
                      description: 'Select type',
                      icon: Icons.airplanemode_active_outlined,
                      widthCard: 200,
                      heightCard: 90,
                      fontSizeTtile: 17,
                      fontSizeDescription: 14,
                      iconContainerSize: 50,
                      iconSize: 30),
                ),
                Container(
                  color: Colors.white,
                  width: widthWindow * 0.05,
                  height: 90,
                ),
                const SearchButtonTravelForm(
                  sizeIcon: 30,
                  paddingX: 40,
                  paddingY: 17,
                  rounded: true,
                )
              ],
            ),
          )
        : SizedBox(
            width: widthWindow * 0.8,
            child: Column(
              children: [
                CardFormTravel(
                    text: 'Location',
                    description: 'Where To Next?',
                    icon: Icons.location_on,
                    widthCard: widthWindow * 0.9,
                    heightCard: 90,
                    fontSizeTtile: 17,
                    fontSizeDescription: 14,
                    iconContainerSize: 50,
                    iconSize: 30),
                CardFormTravel(
                    text: 'Activity',
                    description: 'Select Activity',
                    icon: Icons.directions_run,
                    widthCard: widthWindow * 0.9,
                    heightCard: 90,
                    fontSizeTtile: 17,
                    fontSizeDescription: 14,
                    iconContainerSize: 50,
                    iconSize: 30),
                CardFormTravel(
                    text: 'Tour',
                    description: 'Select type',
                    icon: Icons.airplanemode_active_outlined,
                    widthCard: widthWindow * 0.9,
                    heightCard: 90,
                    fontSizeTtile: 17,
                    fontSizeDescription: 14,
                    iconContainerSize: 50,
                    iconSize: 30),
                const SearchButtonTravelForm(
                    sizeIcon: 20, paddingX: 0, paddingY: 4)
              ],
            ),
          );
  }
}
