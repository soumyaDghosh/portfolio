import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/expandable_fab.dart';
import 'package:soumyadghosh_io/click.dart';
import 'package:soumyadghosh_io/constants.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

Widget floatingActionbutton() {
  return ExpandableFab(
    distance: 112,
    children: [
      ActionButton(
        onPressed: () => openUrl(github),
        icon: const Icon(
          TablerIcons.brand_github,
        ),
      ),
      ActionButton(
        onPressed: () => openUrl(telegram),
        icon: const Icon(TablerIcons.brand_telegram),
      ),
      ActionButton(
        onPressed: () => openUrl(gitlab),
        icon: const Icon(TablerIcons.brand_gitlab),
      ),
      ActionButton(
        onPressed: () => openUrl(discord),
        icon: const Icon(TablerIcons.brand_discord),
      ),
    ],
  );
}
