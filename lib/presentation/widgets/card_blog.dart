import 'package:flutter/material.dart';

class CardBlog extends StatelessWidget {
  final String dateHeader;
  final String title;
  final String description;
  final String linkImgAuthor;
  final String nameAuthor;
  final double widthCard;

  const CardBlog(
      {super.key,
      required this.dateHeader,
      required this.title,
      required this.description,
      required this.linkImgAuthor,
      required this.nameAuthor,
      required this.widthCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widthCard,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xffF1EBE4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CustomTextBlue(text: dateHeader, fontSize: 16),
              _CustomTitleCard(
                title: title,
              ),
              _CustomDescriptionCard(description: description),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _CustomAuthorSection(
          linkImgAuthor: linkImgAuthor,
          nameAuthor: nameAuthor,
          widthCard: widthCard,
        ),
      ],
    );
  }
}

class _CustomTitleCard extends StatelessWidget {
  final String title;
  const _CustomTitleCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 25, color: Color(0xff233B5A), fontWeight: FontWeight.bold),
    );
  }
}

class _CustomDescriptionCard extends StatelessWidget {
  final String description;
  const _CustomDescriptionCard({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(color: Color(0xff565456), fontSize: 18),
    );
  }
}

class _CustomTextBlue extends StatelessWidget {
  final String text;
  final double fontSize;
  const _CustomTextBlue({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xff5560E0),
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _CustomAuthorSection extends StatelessWidget {
  final String linkImgAuthor;
  final String nameAuthor;
  final double widthCard;
  const _CustomAuthorSection(
      {required this.linkImgAuthor,
      required this.nameAuthor,
      required this.widthCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthCard,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(linkImgAuthor),
          ),
          const SizedBox(width: 10),
          _CustomTextBlue(text: 'By $nameAuthor', fontSize: 15)
        ],
      ),
    );
  }
}
