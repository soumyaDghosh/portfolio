import 'package:flutter/material.dart';

PopupMenuEntry popupMenu(
  String menu,
  Function()? ontap,
  //BuildContext context,
  ThemeData theme,
  double fontSize,
) {
  return PopupMenuItem(
    onTap: ontap,
    child: Text(
      menu,
      style: theme.textTheme.displaySmall?.copyWith(fontSize: fontSize),
    ),
  );
}
