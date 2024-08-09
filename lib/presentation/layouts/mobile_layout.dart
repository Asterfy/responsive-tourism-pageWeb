import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  final StatelessWidget child;
  const MobileLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: child,
    );
  }
}
