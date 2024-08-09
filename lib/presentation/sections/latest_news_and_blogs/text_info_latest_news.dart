import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/container_gradient_color.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class TextInfoLatestNews extends StatelessWidget {
  const TextInfoLatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest News & Articles From the Blogs Posts',
            style: TextStyle(
                fontSize: widhtWindow > maxWidthToWrap
                    ? widhtWindow * 0.03
                    : widhtWindow * 0.05,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            "We're an award-winning, forward thinking, boutique digital & creative agency located in Edmonton, Canada",
            style: TextStyle(fontSize: 20, color: Color(0xffC3C1D7)),
          ),
          const SizedBox(height: 20),
          ContainerGradientColor(
            height: widhtWindow * 0.05 > 60 ? 60 : 40,
            width: widhtWindow * 0.05 > 200 ? 200 : 150,
            radius: 50,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'View More',
                  style: TextStyle(
                      fontSize: widhtWindow * 0.01 > 24 ? 24 : 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
