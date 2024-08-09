import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class GetOffAppImage extends StatelessWidget {
  const GetOffAppImage({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Container(
      padding:
          EdgeInsets.only(right: 30, top: widhtWindow > mobileWidth ? 100 : 30),
      width: widhtWindow > mobileWidth ? widhtWindow * 0.4 : widhtWindow,
      child: Image.asset('assets/images/mobile_app.png'),
    );
  }
}
