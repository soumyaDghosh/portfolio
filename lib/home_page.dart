// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:soumyadghosh_io/constants.dart';
import 'package:soumyadghosh_io/expandable_fab.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        title: const Text('Soumyadeep Ghosh, India'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: padding),
            child: TextButton(
              onPressed: () => _click(website),
              child: const Text('GitHub'),
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
            padding: const EdgeInsets.only(
              left: padding,
              right: padding,
              bottom: padding,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'My snap packaging projects',
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.displaySmall
                        ?.copyWith(fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(
                left: padding,
                right: padding * 4,
                bottom: padding,
              ),
              itemCount: snaps.length,
              itemBuilder: (context, index) {
                final snap = snaps.entries.elementAt(index);
                return SizedBox(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(padding / 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(padding / 2),
                    ),
                    onTap: () => _click(snap.key),
                    leading: Image.network(
                      snap.value.$2,
                      filterQuality: FilterQuality.medium,
                    ),
                    title: Text(snap.value.$1),
                    // trailing: Icon(YaruIcons.snapcraft),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: padding / 2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  html.WindowBase _click(String url) => html.window.open(url, '');
}
