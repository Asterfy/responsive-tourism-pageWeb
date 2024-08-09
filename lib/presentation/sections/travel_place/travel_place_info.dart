import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_list_item.dart';

class TravelPlaceInfo extends StatelessWidget {
  const TravelPlaceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Waiting for adventures?\nDon't miss them",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Text(
          "We don't just work with concrete and steel. We are approachable, with even our highest work. We work with people.",
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: 350,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/airplane_animated.png',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  "We have More than 10 year of experience",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
        const CustomListItem(
            text: 'Generation Technology', color: Colors.white),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: CustomListItem(
              text: 'Generation Technology', color: Colors.white),
        ),
        const CustomListItem(text: 'Audio Performance', color: Colors.white)
      ],
    );
  }
}
