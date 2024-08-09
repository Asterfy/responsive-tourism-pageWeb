import 'package:flutter/material.dart';
// import 'package:tourism_responsive_page/presentation/layouts/desktop_layout.dart';
// import 'package:tourism_responsive_page/presentation/layouts/mobile_layout.dart';
import 'package:tourism_responsive_page/presentation/screens/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final widthScreen = MediaQuery.of(context).size.width;

    return const MaterialApp(
        title: 'Tourism Page Web',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffFAFAFA),
            body: SingleChildScrollView(
              child: MainScreen(),
              //   scrollDirection: Axis.vertical,
              //   child: widthScreen > 600
              //       ? const DesktopLayout(child: MainScreen())
              //       : const MobileLayout(child: MainScreen()),
              // ),
            )));
  }
}
