import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/rounded_image_card.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class ImagesSideBestTravel extends StatelessWidget {
  const ImagesSideBestTravel({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        RoundedImageCard(
          imageUrl: 'assets/images/cuscoRound.jpg',
          destination: 'Cusco',
          imageSize: widhtWindow > mobileWidth ? 220 : 250,
        ),
        RoundedImageCard(
          imageUrl: 'assets/images/limaRound.jpg',
          destination: 'Lima',
          imageSize: widhtWindow > mobileWidth ? 320 : 250,
        ),
        RoundedImageCard(
          imageUrl: 'assets/images/machPicchuRound.jpg',
          destination: 'Cusco',
          imageSize: widhtWindow > mobileWidth ? 220 : 250,
        ),
        RoundedImageCard(
          imageUrl: 'assets/images/mountainRound.jpg',
          destination: 'Cusco',
          imageSize: widhtWindow > mobileWidth ? 300 : 250,
        ),
      ],
    );
  }
}
