import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/quick_links/quick_links_images_side.dart';
import 'package:tourism_responsive_page/presentation/sections/quick_links/quick_links_links_side.dart';

class QuickLinksSection extends StatelessWidget {
  const QuickLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Quick Links:',
            style: TextStyle(
                fontSize: 35,
                color: Color(0xff183153),
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 25),
        QuickLinksLinksSide(),
        QuickLinksImagesSide(urlsImages: [
          'assets/images/city_1.jpg',
          'assets/images/city_2.jpg',
          'assets/images/city_3.jpg',
          'assets/images/city_4.jpg',
          'assets/images/city_5.jpg',
        ]),
        Text(
          '© Copyrigh 2024. All Rights Reserved.',
          style: TextStyle(color: Color(0xff183153), fontSize: 20),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
