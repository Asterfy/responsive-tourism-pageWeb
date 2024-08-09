import 'package:flutter/material.dart';

class NavigationOptions extends StatelessWidget {
  final List<String> arrayOptions;
  final double? fontSize;
  const NavigationOptions(
      {super.key, required this.arrayOptions, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: arrayOptions
          .map((text) => Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: fontSize ?? 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.arrow_drop_down_outlined)),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
