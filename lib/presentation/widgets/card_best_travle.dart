import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class CardBestTravel extends StatelessWidget {
  final String linkImg;
  final String title;
  final String description;
  final double sizeImg;
  final double radiusImg;
  final double fontSize;

  const CardBestTravel(
      {super.key,
      required this.linkImg,
      required this.title,
      required this.description,
      required this.sizeImg,
      required this.radiusImg,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: widthWindow > maxWidthToWrap
            ? Row(
                children: [
                  _CustomImagenCard(
                      linkImg: linkImg, sizeImg: sizeImg, radiusImg: radiusImg),
                  _CustomCardInfo(
                    title: title,
                    description: description,
                    fontSize: fontSize,
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CustomImagenCard(
                      linkImg: linkImg, sizeImg: sizeImg, radiusImg: radiusImg),
                  _CustomCardInfo(
                    title: title,
                    description: description,
                    fontSize: fontSize,
                  )
                ],
              ));
  }
}

class _CustomCardInfo extends StatelessWidget {
  final String title;
  final String description;
  final double fontSize;
  const _CustomCardInfo(
      {required this.title, required this.description, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: fontSize,
                color: const Color(0xff363539),
                fontWeight: FontWeight.bold)),
        SizedBox(
          width: widthWindow > maxWidthToWrap
              ? widthWindow * 0.2
              : maxWidthToWrap * 0.8,
          child: Flexible(
            child: Text(description,
                style: TextStyle(
                  fontSize: fontSize * 0.75,
                  color: const Color(0xff363539),
                )),
          ),
        ),
      ],
    );
  }
}

class _CustomImagenCard extends StatelessWidget {
  final String linkImg;
  final double sizeImg;
  final double radiusImg;
  const _CustomImagenCard(
      {required this.linkImg, required this.sizeImg, required this.radiusImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        child: Image(
          image: AssetImage(linkImg),
          width: sizeImg,
          height: sizeImg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
