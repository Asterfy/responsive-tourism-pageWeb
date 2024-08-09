import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  final double imageSize;
  final String imageUrl;
  final String destination;

  const RoundedImageCard(
      {super.key,
      required this.imageUrl,
      required this.destination,
      required this.imageSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Alinea el texto al centro de la imagen
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(imageSize)),
          child: Image(
            width: imageSize,
            height: imageSize,
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(imageSize)),
          child: Container(
            width: imageSize,
            height: imageSize,
            color: Colors.black.withOpacity(0.5), // Color negro con opacidad
          ),
        ),
        Text(
          destination,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
