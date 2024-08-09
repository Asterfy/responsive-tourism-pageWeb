import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/card_best_holiday.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/typical_header_section.dart';

class BestHolidayPackageSection extends StatelessWidget {
  const BestHolidayPackageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Container(
      // height: 400,
      width: widthScreen,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backround_wood.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: const Column(
          children: [
            TypicalHeaderSection(textTitle: 'Best Holiday Package'),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 20,
              runSpacing: 20,
              children: [
                CardBestHoliday(
                    linkImgOval: 'assets/images/plaza_lima.jpg',
                    linkImgRounded: 'assets/images/tourist_people1.jpg',
                    priceMounth: 89,
                    destinantion: 'Arequipa Tour',
                    description:
                        "We don't just work with correct We are Aproachable",
                    features: [
                      'Generation Technology',
                      'Audio Performance',
                      'Generation Technology',
                      'Generation Technology'
                    ],
                    paddingValue: 30,
                    widhCard: 400),
                CardBestHoliday(
                    linkImgOval: 'assets/images/limaRound.jpg',
                    linkImgRounded: 'assets/images/tourist_people2.jpg',
                    priceMounth: 79,
                    destinantion: 'Cusco Tour',
                    description:
                        "We don't just work with correct We are Aproachable",
                    features: [
                      'Generation Technology',
                      'Audio Performance',
                      'Generation Technology',
                      'Generation Technology'
                    ],
                    paddingValue: 30,
                    widhCard: 400),
                CardBestHoliday(
                    linkImgOval: 'assets/images/plaza_lima.jpg',
                    linkImgRounded: 'assets/images/tourist_people1.jpg',
                    priceMounth: 99,
                    destinantion: 'Lima Tour',
                    description:
                        "We don't just work with correct We are Aproachable",
                    features: [
                      'Generation Technology',
                      'Audio Performance',
                      'Generation Technology',
                      'Generation Technology'
                    ],
                    paddingValue: 30,
                    widhCard: 400),
              ],
            )
          ],
        ),
      ),
    );
  }
}
