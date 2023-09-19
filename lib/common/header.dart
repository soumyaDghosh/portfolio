// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/home_page.dart';
import 'package:soumyadghosh_io/snap_maintained_page.dart';
import 'constants.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';
import 'package:soumyadghosh_io/click.dart';
import 'package:soumyadghosh_io/snap_published_page.dart';
import 'package:soumyadghosh_io/snap_contributed_page.dart';
import 'popup_menu.dart';

Widget appBar(BuildContext context) {
  final currentWidth = MediaQuery.of(context).size.width.toInt();
  final String desh, naam;
  final theme = Theme.of(context);
  final double fontSize;
  if (currentWidth >= 1100) {
    fontSize = 20;
  } else if (currentWidth >= 600 && currentWidth < 1100) {
    fontSize = 18;
  } else if (currentWidth >= 485 && currentWidth < 600) {
    fontSize = 16;
  } else {
    fontSize = 15;
  }
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
        PopupMenuButton(
          itemBuilder: (context) => [
            popupMenu(
              'Published',
              context,
              theme,
              fontSize,
              (context) => const SnapPublishedPage(),
            ),
            popupMenu(
              'Maintained',
              context,
              theme,
              fontSize,
              (context) => const SnapMaintainedPage(),
            ),
            popupMenu(
              'Contributed',
              context,
              theme,
              fontSize,
              (context) => const SnapContributedPage(),
            ),
          ],
          child: YaruIconButton(
            icon: Icon(
              YaruIcons.snapcraft,
              color: theme.brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(padding / 5)),
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
