import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double size;
  const CustomButton(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: size, vertical: size * 0.8)),
          backgroundColor: WidgetStateProperty.all(Colors.grey[800]),
          // minimumSize: WidgetStateProperty.all(Size(0, 0)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ));
  }
}
