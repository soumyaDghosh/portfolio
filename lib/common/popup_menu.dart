import 'package:flutter/material.dart';

PopupMenuEntry popupMenu(
  String menu,
  BuildContext context,
  ThemeData theme,
  double fontSize,
  Widget Function(BuildContext) builder,
) {
  return PopupMenuItem(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: builder,
        ),
      );
    },
    child: Text(
      menu,
      style: theme.textTheme.displaySmall?.copyWith(fontSize: fontSize),
    ),
  );
}
