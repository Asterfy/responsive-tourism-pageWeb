import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class QuickLinksImagesSide extends StatelessWidget {
  final List<String> urlsImages;
  const QuickLinksImagesSide({super.key, required this.urlsImages});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      width: widthWindow,
      margin: const EdgeInsets.only(top: 40, bottom: 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 20,
        runSpacing: 20,
        children: [
          for (final url in urlsImages)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  fit: BoxFit.fill,
                  url,
                  width: widthWindow > mobileWidth ? 200 : 150,
                  height: widthWindow > mobileWidth ? 120 : 100,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
