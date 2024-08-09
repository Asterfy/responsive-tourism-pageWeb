import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/container_gradient_color.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class CustomListItem extends StatelessWidget {
  final String text;
  final Color color;
  const CustomListItem({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Row(
      children: [
        ContainerGradientColor(
            width: widthWindow > mobileWidth ? 30 : 25,
            height: widthWindow > mobileWidth ? 30 : 25,
            radius: widthWindow > mobileWidth ? 30 : 25,
            child: Icon(
              Icons.check,
              color: color,
              size: widthWindow > mobileWidth ? 20 : 17,
            )),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
