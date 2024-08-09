import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/destinantion_card.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/get_to_know_us_text.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class TopDestinantionsSection extends StatelessWidget {
  const TopDestinantionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30, top: 16),
          child: Column(
            children: [
              const GetToKnowUsText(),
              Text('Top Destinations',
                  style: TextStyle(
                      fontSize:
                          widhtWindow > mobileWidth ? 50 : widhtWindow * 0.06,
                      color: const Color(0xff363539),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: [
            DestinantionCard(
                widthCard: widhtWindow > maxWidthToWrap
                    ? widhtWindow * 0.26
                    : widhtWindow > mobileWidth
                        ? 400
                        : widhtWindow * 0.9,
                heightCard: 460,
                linkImg: 'assets/images/arequipa.jpg',
                destinantion: 'Perú, Arequipa',
                price: 800,
                tripDays: 328),
            DestinantionCard(
                widthCard: widhtWindow > maxWidthToWrap
                    ? widhtWindow * 0.26
                    : widhtWindow > mobileWidth
                        ? 400
                        : widhtWindow * 0.9,
                heightCard: 460,
                linkImg: 'assets/images/cusco.jpg',
                destinantion: 'Perú, Cusco',
                price: 800,
                tripDays: 328),
            DestinantionCard(
                widthCard: widhtWindow > maxWidthToWrap
                    ? widhtWindow * 0.26
                    : widhtWindow > mobileWidth
                        ? 400
                        : widhtWindow * 0.9,
                heightCard: 460,
                linkImg: 'assets/images/lima.jpg',
                destinantion: 'Perú, Lima',
                price: 800,
                tripDays: 328),
          ],
        )
      ],
    );
  }
}
