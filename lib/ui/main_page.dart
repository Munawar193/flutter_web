import 'package:flutter/material.dart';
import 'package:flutter_web/theme/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Widget nav({
      required String title,
      required int index,
    }) {
      return InkWell(
        onTap: () {
          setState(() {
            selected = index;
          });
        },
        child: Column(
          children: [
            Text(
              title,
              style: blackStyle.copyWith(
                fontSize: 18,
                fontWeight: index == selected ? semibold : medium,
              ),
            ),
            Container(
              height: 2,
              width: 66,
              decoration: BoxDecoration(
                color: index == selected ? kOrangeColor : kTransparentColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      );
    }

    Widget header() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'logo.png',
              height: 40,
              width: 72,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                nav(
                  title: 'Guides',
                  index: 0,
                ),
                const SizedBox(
                  width: 80,
                ),
                nav(
                  title: 'Pricing',
                  index: 1,
                ),
                const SizedBox(
                  width: 80,
                ),
                nav(
                  title: 'Team',
                  index: 2,
                ),
                const SizedBox(
                  width: 80,
                ),
                nav(
                  title: 'Stories',
                  index: 3,
                ),
                const SizedBox(
                  width: 80,
                ),
              ],
            ),
            Image.asset(
              'button_account.png',
              height: 53,
              width: 163,
            ),
          ],
        ),
      );
    }

    Widget ilustrator() {
      return Container(
        margin: const EdgeInsets.only(top: 90),
        height: 550,
        child: Image.asset('ilustrator.png'),
      );
    }

    Widget scrollToLearnMore() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 24,
              width: 24,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('icon_down_solid.png'),
                ),
              ),
            ),
            Text(
              'Scroll to Learn More',
              style: blackStyle.copyWith(
                fontSize: 20,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            children: [
              header(),
              ilustrator(),
              scrollToLearnMore(),
            ],
          ),
        ],
      ),
    );
  }
}
