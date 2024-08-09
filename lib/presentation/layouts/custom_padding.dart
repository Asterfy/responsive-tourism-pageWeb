import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final bool applyVertical;
  final Widget child;
  const CustomPadding(
      {super.key, required this.child, this.applyVertical = false});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widthWindow > 600 ? 90 : 5,
          vertical: applyVertical
              ? widthWindow > 600
                  ? 90
                  : 15
              : 0),
      child: child,
    );
  }
}
