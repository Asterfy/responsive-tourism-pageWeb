import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/custom_list_item_white.dart';

class CardBestHoliday extends StatelessWidget {
  final String linkImgOval;
  final String linkImgRounded;
  final double priceMounth;
  final String destinantion;
  final String description;
  final List<String> features;
  final double widhCard;
  final double paddingValue;
  const CardBestHoliday(
      {super.key,
      required this.linkImgOval,
      required this.linkImgRounded,
      required this.priceMounth,
      required this.destinantion,
      required this.description,
      required this.features,
      required this.paddingValue,
      required this.widhCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widhCard,
      // height: 600,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: paddingValue),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CustomPriceTitle(priceMounth: priceMounth),
          _CustomImgSections(
              linkImgOval: linkImgOval,
              linkImgRounded: linkImgRounded,
              widthCard: widhCard),
          _CustomCardTitle(textTitle: destinantion),
          Text(
            description,
            style: const TextStyle(fontSize: 19, color: Color(0xff363539)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, bottom: 15),
            width: widhCard * 0.8,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xffF1F5F6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _CustomListItems(features: features),
          _CustomGetStartedButton(widthCard: widhCard, radius: 20)
        ],
      ),
    );
  }
}

class _CustomPriceTitle extends StatelessWidget {
  final double priceMounth;
  const _CustomPriceTitle({super.key, required this.priceMounth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "\$",
          style: TextStyle(
              color: Color(0xff363539),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        Text(priceMounth.toString(),
            style: const TextStyle(
                fontSize: 40,
                color: Color(0xff363539),
                fontWeight: FontWeight.bold)),
        const Text(
          "/month",
          style: TextStyle(
              color: Color(0xff363539),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _CustomCardTitle extends StatelessWidget {
  final String textTitle;
  const _CustomCardTitle({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: const TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class _CustomImgSections extends StatelessWidget {
  final String linkImgOval;
  final String linkImgRounded;
  final double widthCard;
  const _CustomImgSections(
      {super.key,
      required this.linkImgOval,
      required this.linkImgRounded,
      required this.widthCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 4, bottom: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              linkImgOval,
              width: widthCard * 0.5,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              linkImgRounded,
              width: widthCard * 0.25,
              height: widthCard * 0.25,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomListItems extends StatelessWidget {
  final List<String> features;
  const _CustomListItems({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: features
          .map(
              (String feature) => CustomListItemWhite(text: feature, width: 20))
          .toList(),
    );
  }
}

class _CustomGetStartedButton extends StatelessWidget {
  final double widthCard;
  final double radius;
  const _CustomGetStartedButton(
      {super.key, required this.widthCard, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: widthCard * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.black,
      ),
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
          backgroundColor: WidgetStateProperty.all(Colors.black),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        child: const Text(
          'Get Started',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
