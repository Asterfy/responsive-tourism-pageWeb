import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/layouts/custom_padding.dart';
import 'package:tourism_responsive_page/presentation/sections/favorite_place/favorite_place_info.dart';
import 'package:tourism_responsive_page/presentation/sections/favorite_place/photo_gallery.dart';

class FavoritePlaceSection extends StatelessWidget {
  const FavoritePlaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [CustomPadding(child: FavoritePlaceInfo()), PhotoGallery()],
      ),
    );
  }
}
