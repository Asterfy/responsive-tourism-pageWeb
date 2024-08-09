import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/responsive_title.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class LocalBusinessSection extends StatelessWidget {
  const LocalBusinessSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: widthWindow,
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
      decoration: const BoxDecoration(
        color: Color(0xffF7FFC4),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ResponsiveTitle(text: 'Trusted by Local Business'),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 50,
            runSpacing: 10,
            children: [
              _CustomLocalLogo(
                  widthLogo: widthWindow > mobileWidth ? 200 : 120,
                  heightLogo: widthWindow > mobileWidth ? 150 : 100,
                  linkLogoImg: 'assets/images/local_business_1.png'),
              _CustomLocalLogo(
                  widthLogo: widthWindow > mobileWidth ? 200 : 120,
                  heightLogo: widthWindow > mobileWidth ? 150 : 100,
                  linkLogoImg: 'assets/images/local_business_2.png'),
              _CustomLocalLogo(
                  widthLogo: widthWindow > mobileWidth ? 200 : 120,
                  heightLogo: widthWindow > mobileWidth ? 150 : 100,
                  linkLogoImg: 'assets/images/local_business_3.png'),
              _CustomLocalLogo(
                  widthLogo: widthWindow > mobileWidth ? 200 : 120,
                  heightLogo: widthWindow > mobileWidth ? 150 : 100,
                  linkLogoImg: 'assets/images/local_business_4.png'),
            ],
          )
        ],
      ),
    );
  }
}

class _CustomLocalLogo extends StatelessWidget {
  final String linkLogoImg;
  final double widthLogo;
  final double heightLogo;
  const _CustomLocalLogo(
      {super.key,
      required this.linkLogoImg,
      required this.widthLogo,
      required this.heightLogo});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fit: BoxFit.fill,
      linkLogoImg,
      width: widthLogo,
      height: heightLogo,
    );
  }
}
