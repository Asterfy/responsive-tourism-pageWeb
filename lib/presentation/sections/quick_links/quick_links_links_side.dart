import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_list_item.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class QuickLinksLinksSide extends StatelessWidget {
  const QuickLinksLinksSide({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return widthWindow > maxWidthToWrap
        ? Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(text: 'Recent Work', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Branding', color: Colors.white)),
                const CustomListItem(text: 'Our history', color: Colors.white)
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(
                    text: 'Product Gallery', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Web & Interactive', color: Colors.white)),
                const CustomListItem(
                    text: 'Help & Support', color: Colors.white)
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(text: 'About Us', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Branded Marchandise', color: Colors.white)),
                const CustomListItem(text: 'Our Awards', color: Colors.white)
              ],
            ),
            const Spacer(),
            const _CustomContactInfo()
          ])
        : Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(text: 'Recent Work', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Branding', color: Colors.white)),
                const CustomListItem(text: 'Our history', color: Colors.white)
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(
                    text: 'Product Gallery', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Web & Interactive', color: Colors.white)),
                const CustomListItem(
                    text: 'Help & Support', color: Colors.white)
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListItem(text: 'About Us', color: Colors.white),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const CustomListItem(
                        text: 'Branded Marchandise', color: Colors.white)),
                const CustomListItem(text: 'Our Awards', color: Colors.white)
              ],
            ),
            const SizedBox(height: 20),
            const _CustomContactInfo()
          ]);
  }
}

class _CustomContactInfo extends StatelessWidget {
  const _CustomContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.black,
              size: 22,
            ),
            SizedBox(width: 10),
            Text(
              '+1 123 456 7890',
              style: TextStyle(color: Colors.black, fontSize: 17),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(children: [
          Icon(
            Icons.email,
            color: Colors.black,
            size: 22,
          ),
          SizedBox(width: 10),
          Text('example@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 17)),
        ]),
        SizedBox(height: 10),
        _RedesSociales()
      ],
    );
  }
}

class _RedesSociales extends StatelessWidget {
  const _RedesSociales({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.facebook,
          color: Colors.black,
          size: 25,
        ),
        SizedBox(width: 10),
        Icon(
          FontAwesomeIcons.twitter,
          color: Colors.black,
          size: 25,
        ),
        SizedBox(width: 10),
        Icon(
          FontAwesomeIcons.youtube,
          color: Colors.black,
          size: 25,
        ),
      ],
    );
  }
}
