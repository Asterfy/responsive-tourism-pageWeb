import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class ResponsiveTitle extends StatelessWidget {
  final String text;
  final Color? color;
  final bool? boldText;
  const ResponsiveTitle(
      {super.key,
      required this.text,
      this.color = const Color(0xff363539),
      this.boldText = true});

  @override
  Widget build(BuildContext context) {
    final widhWindow = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: widhWindow > mobileWidth ? 50 : widhWindow * 0.06,
            fontWeight: boldText! ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
