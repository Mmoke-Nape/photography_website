import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photography_website/screens/home/widgets/heading_button.dart';

class HomePageOne extends StatelessWidget {
  const HomePageOne({
    Key? key,
    required this.carouselController,
    required this.carouselList,
    required this.size,
  }) : super(key: key);

  final CarouselController carouselController;
  final List<String> carouselList;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: carouselList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: size.width,
              child: Image.asset(
                carouselList[index],
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            height: size.height,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlay: true,
            autoPlayCurve: Curves.easeInToLinear,
          ),
        ),
        Container(
          height: size.height,
          width: size.width,
          // color: Colors.red,
          padding: const EdgeInsets.only(top: 70, right: 100, left: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //height: size.height * .18,
                width: double.infinity,
                // color: Colors.green,

                alignment: Alignment.bottomCenter,
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          HeadingButton(text: 'HOME'),
                          HeadingButton(text: 'ABOUT'),
                          HeadingButton(text: 'THE EXPERIENCE'),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        "MPN PHOTOGRAPHY",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 45, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          HeadingButton(text: 'PORTFOLIO'),
                          HeadingButton(text: 'BLOG'),
                          HeadingButton(text: 'CONTACT'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            carouselController.previousPage(
                                duration: const Duration(milliseconds: 800));
                          },
                          child: SizedBox(
                            width: 70,
                            child: Image.asset(
                              'assets/images/arrows/back.png',
                            ),
                          ),
                        ),
                        const SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            carouselController.nextPage(
                                duration: const Duration(milliseconds: 800));
                          },
                          child: SizedBox(
                            width: 70,
                            child: Image.asset(
                              'assets/images/arrows/forward.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
