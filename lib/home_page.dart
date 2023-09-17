// ignore: avoid_web_libraries_in_flutter
//import 'dart:ffi';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:soumyadghosh_io/constants.dart';
import 'package:soumyadghosh_io/expandable_fab.dart';
import 'package:yaru_icons/yaru_icons.dart';
//import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
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
              onTap: () => _click(Bharat),
              child: Text(desh),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: padding),
            child: YaruIconButton(
              onPressed: () => _click(website),
              icon: const Icon(YaruIcons.home_filled),
            ),
          ),
        ],
      ),
      floatingActionButton: ExpandableFab(
        distance: 112,
        children: [
          ActionButton(
            onPressed: () => _click(website),
            icon: const Icon(
              TablerIcons.brand_github,
            ),
          ),
          ActionButton(
            onPressed: () => _click(telegram),
            icon: const Icon(TablerIcons.brand_telegram),
          ),
          ActionButton(
            onPressed: () => _click(gitlab),
            icon: const Icon(TablerIcons.brand_gitlab),
          ),
          ActionButton(
            onPressed: () => _click(discord),
            icon: const Icon(TablerIcons.brand_discord),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Text(
              currentWidth > 600
                  ? 'My Snap Packaging Projects'
                  : 'Snap Packages',
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall
                  ?.copyWith(fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            'Published by me',
            style: theme.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.w100,
              fontSize: 25,
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: currentWidth ~/ 175,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(snaps.length, (index) {
                final snap = snaps.entries.elementAt(index);
                return Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => _click(snap.key),
                        child: Image.network(
                          snap.value.$2,
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

  html.WindowBase _click(String url) => html.window.open(url, '');
}
