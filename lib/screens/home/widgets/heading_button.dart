import 'package:flutter/material.dart';

class HeadingButton extends StatelessWidget {
  final String text;
  const HeadingButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style:
            Theme.of(context).textTheme.bodyText1!.copyWith(letterSpacing: 2),
      ),
    );
  }
}
