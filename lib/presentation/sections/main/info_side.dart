import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/container_gradient_color.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/custom_button.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/get_to_know_us_text.dart';
import 'package:tourism_responsive_page/settings/device_dimensions.dart';

class InfoSideMainSection extends StatelessWidget {
  const InfoSideMainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GetToKnowUsText(),
        _CustomTitle(
            fontSize: widthScreen * 0.07 > 80 ? 80 : widthScreen * 0.07),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 30),
          child: _CustomDescription(
              fontSize: widthScreen * 0.04 > 18 ? 23 : widthScreen * 0.04),
        ),
        _FindMore(
          sizeFMbutton: widthScreen > maxWidthToWrap ? 30 : 20,
          fontSizeFMbutton: widthScreen > maxWidthToWrap ? 20 : 17,
          sizeplayButton: widthScreen > maxWidthToWrap ? 60 : 50,
          iconSizePlayButton: widthScreen > maxWidthToWrap ? 40 : 30,
          fontSizePlayButton: widthScreen > maxWidthToWrap ? 20 : 16,
        )
      ],
    );
  }
}

class _CustomTitle extends StatelessWidget {
  final double? fontSize;
  const _CustomTitle({this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text('Travel, Enjoy\nAnd Live a New\nFull Life',
        style:
            TextStyle(fontSize: fontSize ?? 30, fontWeight: FontWeight.bold));
  }
}

class _CustomDescription extends StatelessWidget {
  final double? fontSize;
  const _CustomDescription({this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "We don't work with concrete and steel. We work with people We are Approachable with even our highest work work with oncrete and steel. We work with people.",
      style: TextStyle(fontSize: fontSize ?? 20, color: Colors.black),
    );
  }
}

class _FindMore extends StatelessWidget {
  final double sizeFMbutton;
  final double fontSizeFMbutton;
  final double sizeplayButton;
  final double iconSizePlayButton;
  final double fontSizePlayButton;
  const _FindMore(
      {required this.sizeFMbutton,
      required this.fontSizeFMbutton,
      required this.sizeplayButton,
      required this.iconSizePlayButton,
      required this.fontSizePlayButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(),
        CustomButton(
            text: 'Find Out More',
            fontSize: fontSizeFMbutton,
            size: sizeFMbutton),
        const Spacer(),
        _PlayDemoButton(
          iconSize: iconSizePlayButton,
          fontSize: fontSizePlayButton,
          size: sizeplayButton,
        ),
        const Spacer()
      ],
    );
  }
}

class _PlayDemoButton extends StatelessWidget {
  final double size;
  final double iconSize;
  final double fontSize;
  const _PlayDemoButton(
      {required this.size, required this.iconSize, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerGradientColor(
            width: size,
            height: size,
            radius: 30,
            child: IconButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.transparent)),
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: iconSize,
                ))),
        TextButton(
            onPressed: () {},
            child: Text(
              'Play Demo',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: fontSize),
            ))
      ],
    );
  }
}
