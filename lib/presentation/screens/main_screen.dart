import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/layouts/custom_padding.dart';
import 'package:tourism_responsive_page/presentation/sections/best_holiday_package/best_holiday_package_section.dart';
import 'package:tourism_responsive_page/presentation/sections/cities/cities_section.dart';
import 'package:tourism_responsive_page/presentation/sections/favorite_place/favorite_place_section.dart';
import 'package:tourism_responsive_page/presentation/sections/get_off_app/get_off_app_section.dart';
import 'package:tourism_responsive_page/presentation/sections/get_the_best_travel/get_the_best_travel_section.dart';
import 'package:tourism_responsive_page/presentation/sections/header_nav/header_section.dart';
import 'package:tourism_responsive_page/presentation/sections/latest_news_and_blogs/latest_news_and_blogs_section.dart';
import 'package:tourism_responsive_page/presentation/sections/local_business/local_business_section.dart';
import 'package:tourism_responsive_page/presentation/sections/main/main_section.dart';
import 'package:tourism_responsive_page/presentation/sections/quick_links/quick_links_section.dart';
import 'package:tourism_responsive_page/presentation/sections/top_destinantions/top_destinantions_section.dart';
import 'package:tourism_responsive_page/presentation/sections/top_destinantions_carrusel/top_destinantions_carrusel_section.dart';
import 'package:tourism_responsive_page/presentation/sections/travel_form/travel_form_section.dart';
import 'package:tourism_responsive_page/presentation/sections/travel_place/travel_place_section.dart';
import 'package:tourism_responsive_page/presentation/sections/what_people_say_about_us/what_people_say_about_us_section.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomPadding(
          applyVertical: true,
          child: HeaderSection(),
        ),
        const CustomPadding(child: MainSection()),
        const CustomPadding(child: TravelFormSection()),
        const CustomPadding(child: TopDestinantionsSection()),
        const GetTheBestTravelSection(),
        const CustomPadding(child: GetOffAppSection()),
        const FavoritePlaceSection(),
        const CustomPadding(child: TravelPlaceSection()),
        const TopDestinantionsCarruselSection(),
        const BestHolidayPackageSection(),
        const CustomPadding(child: LatestNewsAndBlogsSection()),
        const LocalBusinessSection(),
        const CustomPadding(child: WhatPeopleSayAboutUsSection()),
        CitiesSection(
            urlsCities: widthWindow > mobileWidth
                ? [
                    'assets/images/city_1.jpg',
                    'assets/images/city_2.jpg',
                    'assets/images/city_3.jpg',
                    'assets/images/city_4.jpg',
                    'assets/images/city_5.jpg',
                    'assets/images/cusco.jpg'
                  ]
                : [
                    'assets/images/city_1.jpg',
                    'assets/images/city_2.jpg',
                    'assets/images/city_3.jpg',
                  ]),
        const CustomPadding(child: QuickLinksSection())
      ],
    );
  }
}
