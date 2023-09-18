import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/click.dart';

Widget clangButton(IconData iconName, int currentwidth, String lang) {
  final double height, width, fontSize;
  if (currentwidth >= 1000) {
    height = 100;
    width = 200;
    fontSize = 45;
  } else if (currentwidth < 1000 && currentwidth >= 750) {
    height = 90;
    width = 150;
    fontSize = 30;
  } else if (currentwidth < 750 && currentwidth >= 485) {
    height = 75;
    width = 125;
    fontSize = 25;
  } else {
    height = 55;
    width = 90;
    fontSize = 17;
  }
  return SizedBox(
    height: height,
    width: width,
    child: IconButton(
      icon: Icon(
        iconName,
        size: fontSize,
      ),
      onPressed: () => openUrl(
        'https://github.com/soumyaDghosh?tab=repositories&q=&type=&language=$lang&sort=',
      ),
    ),
  );
}

Widget langButton(String langName, int currentwidth, BuildContext context) {
  final double height, width, fontSize;
  final theme = Theme.of(context);
  if (currentwidth >= 1000) {
    height = 100;
    width = 200;
    fontSize = 45;
  } else if (currentwidth < 1000 && currentwidth >= 750) {
    height = 100;
    width = 150;
    fontSize = 30;
  } else if (currentwidth < 750 && currentwidth >= 500) {
    height = 75;
    width = 110;
    fontSize = 20;
  } else {
    height = 50;
    width = 50;
    fontSize = 15;
  }
  return SizedBox(
    height: height,
    width: width,
    child: TextButton(
      child: Text(
        langName,
        style: theme.textTheme.displaySmall?.copyWith(fontSize: fontSize),
      ),
      onPressed: () {},
    ),
  );
}
