import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/sections/latest_news_and_blogs/blogs_side.dart';
import 'package:tourism_responsive_page/presentation/sections/latest_news_and_blogs/latest_news_side.dart';

class LatestNewsAndBlogsSection extends StatelessWidget {
  const LatestNewsAndBlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [LatestNewsSide(), BlogsSide()],
      ),
    );
  }
}
