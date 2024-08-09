import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/latest_news_and_blogs/text_info_latest_news.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class LatestNewsSide extends StatelessWidget {
  const LatestNewsSide({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 30),
      width: widhtWindow * 0.9,
      child: widhtWindow > maxWidthToWrap
          ? Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/plaza_lima.jpg',
                    width: widhtWindow * 0.9,
                    fit: BoxFit.fill,
                    height: 400,
                  ),
                ),
                const _CustomMaskAndText(),
              ],
            )
          : Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    'assets/images/plaza_lima.jpg',
                    width: widhtWindow * 0.9,
                    fit: BoxFit.fill,
                    height: 400,
                  ),
                ),
                const _CustomMaskAndText(),
              ],
            ),
    );
  }
}

class _CustomMaskAndText extends StatelessWidget {
  const _CustomMaskAndText({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtWindow = MediaQuery.of(context).size.width;
    return Positioned(
      right: 0,
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: widhtWindow > maxWidthToWrap
                ? Colors.black.withOpacity(0.8)
                : Colors.black,
            borderRadius: widhtWindow > maxWidthToWrap
                ? const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
          ),
          width: widhtWindow > maxWidthToWrap
              ? widhtWindow * 0.45
              : widhtWindow * 0.9,
          height: widhtWindow > maxWidthToWrap ? 400 : null,
          child: const TextInfoLatestNews(), // Color negro con opacidad
        ),
      ),
    );
  }
}
