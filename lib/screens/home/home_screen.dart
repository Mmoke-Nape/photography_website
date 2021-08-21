import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photography_website/constants/asset_path.dart';
import 'package:photography_website/constants/colours.dart';
import 'package:photography_website/screens/home/Pages/page1/home_page1.dart';

import 'Pages/page2/home_page2.dart';
import 'Pages/page3/home_page3.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var scaffoldKey = GlobalKey<ScaffoldState>();

  final carouselList = [background1, background3, background4];
  final carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const sizeBoxHeight = 60.0;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageOne(
              carouselController: carouselController,
              carouselList: carouselList,
              size: size,
            ),
            HomePageTwo(size: size),
            HomePageThree(size: size, sizeBoxHeight: sizeBoxHeight),
            Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KIND WORDS',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontSize: 85,
                            color: secondaryColourBrown,
                            height: 1.1),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        width: size.width * .4,
                        height: size.height * .7,
                        color: secondaryColourBrown,
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GABY + TONY',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        'CAPE TOWN, SOUTH AFRICA',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "There are no words to describe how wonderful Brandi is not only as a photographer and\nartist but as a person. We introduced ourselves with Brandi on Skype (We're in Seattle) & met\nher on the Wedding day - but from day 1 - Brandi was so genuine & kind - it felt like we'd been\nlifelong friends.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Brandi's photography style is so easy and natural - it's just a joy to photograph with her. My\nhusband, Tony & I aren't ones to take many pictures but Brandi snapped the most incredible\nphotos in the stolen moments. Just after the wedding, Brandi shared a preview of the photos\nand just with those photos - I would have been over the moon happy.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "I'm not sure how she captured every moment but she did and for that we're eternally grateful.\nYou can tell the care and attention she puts into the entire album. It really is the most\nincredible gift. If Brandi's available - breathe a sigh of relief - because you just hit the\nwedding jackpot!! Best decision we could have ever made.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'Thank you from the bottom of our hearts, Brandi!',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 20),
                      // Row(
                      //   children: [
                      //     Spacer(),
                      //     TextButton(
                      //       style: ButtonStyle(
                      //         padding: MaterialStateProperty.all<EdgeInsets>(
                      //           const EdgeInsets.symmetric(
                      //               horizontal: 70, vertical: 20),
                      //         ),
                      //         backgroundColor: MaterialStateProperty.all(
                      //             secondaryColourBrown),
                      //         shape: MaterialStateProperty.all(
                      //           const RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.zero,
                      //           ),
                      //         ),
                      //       ),
                      //       onPressed: () {},
                      //       child: Text(
                      //         'VIEW MORE',
                      //         style: Theme.of(context)
                      //             .textTheme
                      //             .bodyText2!
                      //             .copyWith(
                      //                 color: Colors.black,
                      //                 fontWeight: FontWeight.w100),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
