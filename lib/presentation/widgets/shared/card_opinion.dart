import 'package:flutter/material.dart';

class CardOpinion extends StatelessWidget {
  final String linkImgProfile;
  final String name;
  final String profession;
  final String opinion;
  final int stars;
  final Color bgColor;
  final double widthCard;
  final double sizeStars;
  const CardOpinion(
      {super.key,
      required this.linkImgProfile,
      required this.name,
      required this.opinion,
      required this.stars,
      this.bgColor = const Color(0xff4700E8),
      required this.widthCard,
      required this.profession,
      this.sizeStars = 30});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthCard,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _CustomCardBody(
              name: name,
              profession: profession,
              opinion: opinion,
              stars: stars,
              bgColor: bgColor,
              widthCard: widthCard,
              sizeStars: sizeStars),
          Positioned(
              top: -40,
              left: -40,
              child: _ProfilePhotoCardOpinion(
                  linkImgProfile: linkImgProfile, size: 80)),
        ],
      ),
    );
  }
}

class _ProfilePhotoCardOpinion extends StatelessWidget {
  final String linkImgProfile;
  final double size;
  const _ProfilePhotoCardOpinion(
      {super.key, required this.linkImgProfile, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: Image.asset(
        fit: BoxFit.fill,
        linkImgProfile,
        width: size,
        height: size,
      ),
    );
  }
}

class _CustomCardBody extends StatelessWidget {
  final String name;
  final String profession;
  final String opinion;
  final int stars;
  final Color bgColor;
  final double widthCard;
  final double sizeStars;
  const _CustomCardBody(
      {super.key,
      required this.name,
      required this.profession,
      required this.opinion,
      required this.stars,
      required this.bgColor,
      required this.widthCard,
      required this.sizeStars});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: widthCard * 0.9,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            opinion,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          _CustomCardFooter(
              name: name,
              profession: profession,
              stars: stars,
              sizeStars: sizeStars),
        ],
      ),
    );
  }
}

class _CustomCardFooter extends StatelessWidget {
  final String name;
  final String profession;
  final int stars;
  final double sizeStars;
  const _CustomCardFooter(
      {super.key,
      required this.name,
      required this.profession,
      required this.stars,
      required this.sizeStars});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _CustomInfoAutor(name: name, profession: profession),
        const Spacer(),
        _CustomRowStars(stars: stars, sizeStars: sizeStars)
      ],
    );
  }
}

class _CustomInfoAutor extends StatelessWidget {
  final String name;
  final String profession;
  const _CustomInfoAutor(
      {super.key, required this.name, required this.profession});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Text(
            name,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(50)),
          ),
          child: Text(
            profession,
            style: const TextStyle(color: Colors.black, fontSize: 13),
          ),
        )
      ],
    );
  }
}

class _CustomRowStars extends StatelessWidget {
  final int stars;
  final double sizeStars;
  const _CustomRowStars(
      {super.key, required this.stars, required this.sizeStars});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        stars,
        (index) => Icon(
          Icons.star,
          color: Colors.amber,
          size: sizeStars,
        ),
      ),
    );
  }
}
