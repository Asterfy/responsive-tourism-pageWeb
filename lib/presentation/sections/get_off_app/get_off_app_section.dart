import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/get_off_app/get_off_app_description.dart';
import 'package:tourism_responsive_page/presentation/sections/get_off_app/get_off_app_image.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class GetOffAppSection extends StatelessWidget {
  const GetOffAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return widthWindow > maxWidthToWrap
        ? const Row(
            children: [GetOffAppImage(), GetOffAppDescription()],
          )
        : const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [GetOffAppImage(), GetOffAppDescription()],
          );
  }
}
