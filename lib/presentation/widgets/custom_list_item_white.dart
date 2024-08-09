import 'package:flutter/material.dart';

class CustomListItemWhite extends StatelessWidget {
  final String text;
  final double width;
  final Color bgColor;
  const CustomListItemWhite(
      {super.key,
      required this.text,
      required this.width,
      this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width),
              color: bgColor,
              border: Border.all(color: Colors.deepPurple, width: 2),
            ),
            child: Icon(
              Icons.check,
              color: Colors.deepPurple,
              size: width * 0.8,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
