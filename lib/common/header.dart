// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/home_page.dart';
import 'package:soumyadghosh_io/snap_page.dart';
import '../constants.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';
import 'package:soumyadghosh_io/click.dart';

Widget appBar(BuildContext context) {
  final currentWidth = MediaQuery.of(context).size.width.toInt();
  final String desh, naam;

  if (currentWidth < 600) {
    desh = '';
  } else {
    desh = 'Bharat';
  }
  if (currentWidth < 420) {
    naam = 'Soumya';
  } else if (currentWidth > 420 && currentWidth < 600) {
    naam = 'Soumyadeep Ghosh';
  } else {
    naam = 'Soumyadeep Ghosh,';
  }
  return PreferredSize(
    preferredSize: const Size.fromHeight(100),
    child: AppBar(
      toolbarHeight: 80,
      leading: const Padding(
        padding: EdgeInsets.only(left: padding),
        child: CircleAvatar(
          backgroundImage: NetworkImage(avatar),
        ),
      ),
      title: Row(
        children: [
          Text(naam),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () => openUrl(bharatVarsha),
            child: Text(desh),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: padding, left: padding),
          child: YaruIconButton(
            icon: const Icon(YaruIcons.snapcraft),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SnapPage(),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: padding),
          child: YaruIconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            icon: const Icon(YaruIcons.home_filled),
          ),
        ),
      ],
    ),
  );
}
