import 'package:flutter/material.dart';
import 'package:flutter_web/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Widget nav({
      required String title,
      required int index,
    }) {
      return GestureDetector(
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
                fontSize: 24,
                color: index == selected ? kYelloColor : kWhiteColor,
                fontWeight: index == selected ? semibold : semibold,
              ),
            ),
            Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: index == selected ? kYelloColor : kTransparentColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.all(55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Munawar  ',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: kWhiteColor,
                  ),
                ),
                Text(
                  'Khalil.',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: kYelloColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                nav(title: 'Home', index: 0),
                const SizedBox(
                  width: 150,
                ),
                nav(title: 'Project', index: 1),
                const SizedBox(
                  width: 150,
                ),
                nav(title: 'Support', index: 2),
                const SizedBox(
                  width: 150,
                ),
                nav(title: 'About', index: 3),
                const SizedBox(
                  width: 80,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 100,
          left: 120,
          right: 120,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, I’m ',
                    style: GoogleFonts.poppins(
                      color: kWhiteColor,
                      fontSize: 72,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'teuku munawar khalil Seorang Manusia biasa yang kurang jago ngoding, dan desain',
                    style: GoogleFonts.poppins(
                      color: kWhiteColor,
                      fontSize: 38,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 200,
                        margin: const EdgeInsets.only(right: 60),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kYelloColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Contac Me',
                              style: GoogleFonts.poppins(
                                fontWeight: semibold,
                                fontSize: 18,
                                color: kPrimeColor,
                              )),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/twitter.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ig.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/tiktok.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
