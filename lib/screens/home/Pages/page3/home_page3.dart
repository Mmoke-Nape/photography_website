import 'package:flutter/material.dart';
import 'package:photography_website/constants/colours.dart';

class HomePageThree extends StatelessWidget {
  const HomePageThree({
    Key? key,
    required this.size,
    required this.sizeBoxHeight,
  }) : super(key: key);

  final Size size;
  final double sizeBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
                  width: size.width * .45,
                  height: size.height * .9,
                  child:
                      Image.asset("assets/images/background/background6.jpg"))),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: sizeBoxHeight),
                Text(
                  "HI I'M LeQUISHA",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        color: mainColourBage,
                        height: 1.1,
                      ),
                ),
                SizedBox(height: sizeBoxHeight),
                Text(
                  "A Sandton, Johannesburg Wedding and Elopement Photographer.",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black54, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: sizeBoxHeight),
                Text(
                  "I've been a wedding photographer for a little over 9 years and can't imagine doing\nanything else. No matter what type of celebration you're having, I want to be there\ndocumenting your story!",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black54, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: sizeBoxHeight),
                Text(
                  "The real you, the real love. No overly stiff poses, no staged moments, just the two of\nyou in your element.",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black54, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: sizeBoxHeight),
                Text(
                  "Thank you for checking out my work - take a look around and stay awhile!",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black54, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: sizeBoxHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 20),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(mainColourBage),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'VIEW MORE',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
