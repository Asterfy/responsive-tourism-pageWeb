import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class CitiesSection extends StatelessWidget {
  final List<String> urlsCities;
  const CitiesSection({super.key, required this.urlsCities});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          for (var url in urlsCities)
            Expanded(
              child: Image.asset(
                width: widthWindow / urlsCities.length,
                url,
                height: widthWindow > mobileWidth ? 300 : 200,
                fit: BoxFit.fill,
              ),
            )
        ],
      ),
    );
  }
}
