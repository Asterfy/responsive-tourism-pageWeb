import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/card_blog.dart';

class BlogsSide extends StatelessWidget {
  const BlogsSide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        CardBlog(
            widthCard: 400,
            dateHeader: 'August 17, 2024',
            title: 'Beach Days, Long Hikes, And Hikes',
            description:
                'Non libero hac commodo torquent finibus metus. Duis in nisi diam nunc habitasse lorem elit. Ante porta accumsan sociosqu faucibus',
            linkImgAuthor: 'assets/images/business_man.jpg',
            nameAuthor: 'Emma Mark'),
        CardBlog(
            widthCard: 400,
            dateHeader: 'April 17, 2024',
            title: 'Island Hopping And Weather Tips',
            description:
                'Non libero hac commodo torquent finibus metus. Duis in nisi diam nunc habitasse lorem elit. Ante porta accumsan sociosqu faucibus',
            linkImgAuthor: 'assets/images/business_man.jpg',
            nameAuthor: 'Alex Mark'),
        CardBlog(
            widthCard: 400,
            dateHeader: 'July 9, 2024',
            title: 'Assertively iterate resource maximizing',
            description:
                'Non libero hac commodo torquent finibus metus. Duis in nisi diam nunc habitasse lorem elit. Ante porta accumsan sociosqu faucibus',
            linkImgAuthor: 'assets/images/business_man.jpg',
            nameAuthor: 'Antonio Mark'),
      ],
    );
  }
}
