// ignore: avoid_web_libraries_in_flutter
//import 'dart:ffi';
//import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/click.dart';
import 'package:soumyadghosh_io/common/floating_action.dart';
import 'package:soumyadghosh_io/common/constants.dart';
import 'common/constant_snaps_contributed.dart';
//import 'package:yaru_icons/yaru_icons.dart';
//import 'package:yaru/yaru.dart';
//import 'package:yaru_widgets/yaru_widgets.dart';
import 'common/header.dart';

class SnapContributedPage extends StatelessWidget {
  const SnapContributedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width.toInt();
    final theme = Theme.of(context);
    final String header;
    if (currentWidth > 600) {
      header = 'My Snap Packaging Projects';
    } else {
      header = 'Snap Projects';
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBar(context, 4),
      ),
      floatingActionButton: floatingActionbutton(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: padding,
              bottom: padding / 10,
              left: padding,
              right: padding,
            ),
            child: Text(
              header,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: padding,
              bottom: padding / 2,
              left: padding,
              right: padding,
            ),
            child: Text(
              'Contributed by me',
              style: theme.textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w100,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            //flex: 2,
            child: GridView.count(
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: currentWidth > 800 ? 5 : currentWidth ~/ 175,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(snaps.length, (index) {
                final snap = snaps.entries.elementAt(index);
                final snapDesktop = snapsDesktop.entries.elementAt(index);
                return Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => openUrl(snap.key),
                        child: Image.network(
                          currentWidth > 800
                              ? snapDesktop.value.$2
                              : snap.value.$2,
                          height: 100,
                          scale: 1,
                        ),
                      ),
                      Center(
                        child: Text(
                          snap.value.$1,
                          style: Theme.of(context).textTheme.headlineSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  //html.WindowBase openUrl(String url) => html.window.open(url, '');
}
