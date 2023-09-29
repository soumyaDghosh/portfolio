// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';
import 'package:soumyadghosh_io/click.dart';
import 'popup_menu.dart';

Widget appBar(BuildContext context, int current) {
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
              current != 2
                  ? () => Navigator.pushNamed(context, '/snapPublished')
                  : () {},
              //context,
              theme,
              fontSize,
            ),
            popupMenu(
              'Maintained',
              current != 3
                  ? () => Navigator.pushNamed(context, '/snapMaintained')
                  : () {},
              //context,
              theme,
              fontSize,
            ),
            popupMenu(
              'Contributed',
              current != 4
                  ? () => Navigator.pushNamed(context, '/snapContributed')
                  : () {},
              //context,
              theme,
              fontSize,
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
          child: current != 1
              ? YaruIconButton(
                  //onPressed: () => Navigator.pushNamed(context, '/home'),
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  icon: const Icon(YaruIcons.home_filled),
                )
              : const Icon(YaruIcons.home_filled),
        ),
      ],
    ),
  );
}
