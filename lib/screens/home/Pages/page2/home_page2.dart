import 'package:flutter/material.dart';
import 'package:photography_website/constants/colours.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            left: 120,
            child: Container(
              width: size.width * .45,
              height: size.height * .8,
              color: mainColourBage,
              child: Image.asset(
                'assets/images/background/background5.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: (size.height * .8) + 120,
            child: Container(
              width: size.width * .25,
              height: size.height * .6,
              color: secondaryColourBrown,
              child: Image.asset(
                'assets/images/background/background7.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * .63,
            left: (size.height * .8) + (size.width * .25) - 100,
            child: Text(
              'MAKING YOUR\nMEMORIES TANGIBLE',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontSize: 85, color: mainColourBage, height: 1.1),
            ),
          ),
          Positioned(
            top: 50,
            right: 70,
            child: Text(
              'We flew Brandi out to Hawaii for our\nwedding, and despite being completely\nnew to the island, she did an amazing\njob capturing our day!\n\n― Chanel + Brett',
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black45, fontWeight: FontWeight.w100),
            ),
          ),
          Positioned(
            top: 250,
            right: 70,
            child: Text(
              'GET IN TOUCH!',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.black87,
                  fontSize: 17,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
