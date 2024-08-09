import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/destinantion_card.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/typical_header_section.dart';

class TopDestinantionsCarruselSection extends StatelessWidget {
  const TopDestinantionsCarruselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: const Column(
        children: [
          TypicalHeaderSection(textTitle: 'Top Destinations'),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              DestinantionCard(
                  linkImg: 'assets/images/machuPicchu.jpg',
                  destinantion: 'Machu Picchu',
                  price: 238,
                  tripDays: 30,
                  widthCard: 350,
                  heightCard: 450),
              DestinantionCard(
                  linkImg: 'assets/images/lima.jpg',
                  destinantion: 'Lima',
                  price: 200,
                  tripDays: 20,
                  widthCard: 350,
                  heightCard: 450),
              DestinantionCard(
                  linkImg: 'assets/images/arequipa.jpg',
                  destinantion: 'Arquipa',
                  price: 150,
                  tripDays: 24,
                  widthCard: 350,
                  heightCard: 450),
              DestinantionCard(
                  linkImg: 'assets/images/cusco.jpg',
                  destinantion: 'Cusco',
                  price: 120,
                  tripDays: 40,
                  widthCard: 350,
                  heightCard: 450),
            ],
          )
        ],
      ),
    );
  }
}
