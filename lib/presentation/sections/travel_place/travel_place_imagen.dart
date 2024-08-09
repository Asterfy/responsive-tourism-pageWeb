import 'package:flutter/material.dart';

class TravelPlaceImagen extends StatelessWidget {
  const TravelPlaceImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(300),
        child: Image.asset(
          'assets/images/machuPicchu.jpg',
          fit: BoxFit.fill,
          height: 500,
        ),
      ),
    );
  }
}
