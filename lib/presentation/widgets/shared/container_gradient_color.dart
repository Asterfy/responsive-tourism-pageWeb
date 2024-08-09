import 'package:flutter/material.dart';

class ContainerGradientColor extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? radius;
  final List<Color>? colors;
  const ContainerGradientColor(
      {super.key,
      required this.child,
      this.width,
      this.height,
      this.radius,
      this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors ?? const [Color(0xff4D00EA), Color(0xff7500F9)],
        ),
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
      child: child,
    );
  }
}
