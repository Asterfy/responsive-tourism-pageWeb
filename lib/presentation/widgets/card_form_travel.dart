import 'package:flutter/material.dart';

class CardFormTravel extends StatelessWidget {
  final String text;
  final String description;
  final IconData icon;
  final double widthCard;
  final double heightCard;
  final double fontSizeTtile;
  final double fontSizeDescription;
  final double iconContainerSize;
  final double iconSize;
  final bool rounded;
  const CardFormTravel(
      {super.key,
      required this.text,
      required this.description,
      required this.icon,
      required this.widthCard,
      required this.heightCard,
      this.rounded = false,
      required this.fontSizeTtile,
      required this.fontSizeDescription,
      required this.iconContainerSize,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      width: widthCard,
      height: heightCard,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: rounded
            ? const BorderRadius.only(
                topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              _CustomTitleCard(
                title: text,
                textSize: fontSizeTtile,
              ),
              _CustomDescriptionCard(
                  description: description, textSize: fontSizeDescription),
              const Spacer(),
            ],
          ),
          const Spacer(
            flex: 6,
          ),
          _CustomRadioIcon(
            icon: icon,
            sizeIcon: iconSize,
            sizeContainer: iconContainerSize,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _CustomTitleCard extends StatelessWidget {
  final String title;
  final double textSize;
  const _CustomTitleCard(
      {super.key, required this.title, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: textSize, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class _CustomDescriptionCard extends StatelessWidget {
  final String description;
  final double textSize;
  const _CustomDescriptionCard(
      {super.key, required this.description, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(fontSize: textSize, color: Colors.black),
    );
  }
}

class _CustomRadioIcon extends StatelessWidget {
  final IconData icon;
  final double sizeIcon;
  final double sizeContainer;
  const _CustomRadioIcon(
      {super.key,
      required this.icon,
      required this.sizeIcon,
      required this.sizeContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeContainer,
      height: sizeContainer,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        icon,
        size: sizeIcon,
        color: Colors.black,
      ),
    );
  }
}
