import 'package:flutter/material.dart';

class ImageSideMainSection extends StatelessWidget {
  const ImageSideMainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/machTransp.jpg",
      fit: BoxFit.cover,
    );
  }
}
