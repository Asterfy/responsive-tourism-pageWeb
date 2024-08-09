import 'package:flutter/material.dart';
import 'package:tourism_responsive_page/presentation/widgets/navigation_options.dart';
import 'package:tourism_responsive_page/presentation/widgets/shared/container_gradient_color.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        children: [
          const _GoytoLogo(),
          const Spacer(),
          if (widthScreen > 1100)
            const NavigationOptions(arrayOptions: [
              'Home',
              'About',
              'Toure',
              'Pages',
              'Blog',
            ]),
          const Spacer(),
          widthScreen > 1100 ? const _TalkAboutButton() : const _MenuButton()
        ],
      ),
    );
  }
}

class _GoytoLogo extends StatelessWidget {
  const _GoytoLogo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerGradientColor(
            width: 50,
            height: 50,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.map_outlined,
                  color: Colors.white,
                  size: 35,
                ))),
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: const Text(
            'Tourism',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, wordSpacing: 0.3),
          ),
        )
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(BuildContext context) {
    return ContainerGradientColor(
        width: 120,
        height: 50,
        child: TextButton(
          style: ButtonStyle(
              padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
              backgroundColor: WidgetStateProperty.all(Colors.transparent)),
          onPressed: () {},
          child: const Text(
            'Menu',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }
}

class _TalkAboutButton extends StatelessWidget {
  const _TalkAboutButton();

  @override
  Widget build(BuildContext context) {
    return ContainerGradientColor(
      width: 230,
      height: 70,
      radius: 50,
      child: FilledButton.icon(
        icon: const Icon(
          Icons.chat_bubble_outline_rounded,
          size: 20,
        ),
        iconAlignment: IconAlignment.start,
        onPressed: () {},
        style: ButtonStyle(
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
            backgroundColor: WidgetStateProperty.all(Colors.transparent)),
        label: const Row(
          children: [
            Text(
              "Let's talk",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: 15),
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
