import 'package:flutter/material.dart';

class SearchButtonTravelForm extends StatelessWidget {
  final double paddingX;
  final double paddingY;
  final double sizeIcon;
  final bool rounded;
  const SearchButtonTravelForm(
      {super.key,
      required this.sizeIcon,
      required this.paddingX,
      required this.paddingY,
      this.rounded = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingX, vertical: paddingY),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xff4D00EA), Color(0xff7500F9)],
        ),
        borderRadius: rounded
            ? const BorderRadius.only(
                topRight: Radius.circular(40), bottomRight: Radius.circular(40))
            : null,
      ),
      child: Center(
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: sizeIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
