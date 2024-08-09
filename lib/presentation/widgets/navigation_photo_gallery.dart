import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_rounded_button.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class NavigationPhotoGallery extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  const NavigationPhotoGallery(
      {super.key, required this.widthContainer, required this.heightContainer});

  @override
  Widget build(BuildContext context) {
    final widthWindow = MediaQuery.of(context).size.width;
    return Container(
      width: widthContainer,
      height: heightContainer,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: widthWindow > maxWidthToWrap
            ? BorderRadius.circular(20)
            : const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
        color: const Color(0xff1A1E21),
      ),
      child: widthWindow > mobileWidth
          ? Row(
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Centra verticalmente los elementos
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _Description(),
                Expanded(
                  child: Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 50),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const _NavigateButtons(),
              ],
            )
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_Description(), _NavigateButtons()],
            ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Famous Photo Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Click photo to enlarge',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}

class _NavigateButtons extends StatelessWidget {
  const _NavigateButtons();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomRoundedButton(
          icon: Icon(Icons.arrow_back),
          bgColor: Colors.white,
          paddingValue: 3,
        ),
        SizedBox(width: 10), // Espacio entre los botones
        CustomRoundedButton(
          icon: Icon(Icons.arrow_forward),
          bgColor: Colors.white,
          paddingValue: 3,
        ),
      ],
    );
  }
}
