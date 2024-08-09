import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/navigation_photo_gallery.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: widthWindow > mobileWidth
          ? Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/people_traveling_1.jpg",
                  fit: BoxFit.fill,
                  height: 500,
                  width: widthWindow,
                ),
                Positioned(
                    bottom: -75,
                    child: NavigationPhotoGallery(
                      heightContainer: 150,
                      widthContainer: widthWindow * 0.9,
                    ))
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/people_traveling_1.jpg",
                  fit: BoxFit.fill,
                  width: widthWindow,
                  height: 300,
                ),
                NavigationPhotoGallery(
                  widthContainer: widthWindow * 0.95,
                  heightContainer: 150,
                )
              ],
            ),
    );
  }
}
