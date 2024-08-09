import 'package:flutter/material.dart';

class DestinantionCard extends StatelessWidget {
  final String linkImg;
  final String destinantion;
  final double price;
  final int tripDays;
  final double widthCard;
  final double heightCard;
  const DestinantionCard(
      {super.key,
      required this.linkImg,
      required this.destinantion,
      required this.price,
      required this.tripDays,
      required this.widthCard,
      required this.heightCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: widthCard,
          height: heightCard,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            child: Image.asset(
              linkImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: widthCard,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 2),
          color: Colors.white,
          child: Row(children: [
            Text(
              destinantion,
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff363539),
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 6,
            ),
            Text(
              '\$${price.toString()}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff363539)),
            ),
          ]),
        ),
        Container(
          width: widthCard,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.near_me),
              ),
              Text(
                '$tripDays days Trip',
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363539)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
