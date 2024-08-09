import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  final StatelessWidget child;
  const DesktopLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
      child: child,
    );
  }
}
