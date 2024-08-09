import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_list_item.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/get_to_know_us_text.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/responsive_title.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class GetOffAppDescription extends StatelessWidget {
  const GetOffAppDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      width: widthWindow > mobileWidth ? widthWindow * 0.4 : widthWindow,
      padding: widthWindow > mobileWidth
          ? const EdgeInsets.only(top: 100, bottom: 30)
          : const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetToKnowUsText(),
          ResponsiveTitle(
              text: 'Get 5% off on your\nFirst app booking\nTravel with us'),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "We don't work with concrete and steel. We work with peopke We are Approachable, with even our highest work work with concrete and steel We work with people",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          Wrap(
            spacing: 20,
            runSpacing: 5,
            alignment: WrapAlignment.start,
            children: [
              CustomListItem(
                  text: 'Generation Technology', color: Colors.white),
              CustomListItem(
                  text: 'Generation Technology', color: Colors.white),
              CustomListItem(text: 'Audio Performance', color: Colors.white),
              CustomListItem(text: 'Audio Performance', color: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
