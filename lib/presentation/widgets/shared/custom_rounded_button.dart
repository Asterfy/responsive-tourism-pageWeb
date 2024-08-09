import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final Icon icon;
  final Color bgColor;
  final double paddingValue;
  const CustomRoundedButton(
      {super.key,
      required this.icon,
      required this.bgColor,
      required this.paddingValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: bgColor),
      padding: EdgeInsets.all(paddingValue),
      margin: const EdgeInsets.all(5),
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
