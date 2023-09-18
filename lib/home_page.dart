import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:soumyadghosh_io/common/floating_action.dart';
//import 'package:soumyadghosh_io/click.dart';
import 'package:soumyadghosh_io/common/header.dart';
import 'package:soumyadghosh_io/common/lang_button.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'constants.dart';
//import 'package:yaru_icons/yaru_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width.toInt();
    final theme = Theme.of(context);
    final double fontSize;
    if (currentWidth >= 1100) {
      fontSize = 50;
    } else if (currentWidth >= 600 && currentWidth < 1100) {
      fontSize = 38;
    } else if (currentWidth >= 485 && currentWidth < 600) {
      fontSize = 25;
    } else {
      fontSize = 20;
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBar(context),
      ),
      floatingActionButton: floatingActionbutton(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  width: 5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(padding),
                child: Center(
                  child: Text(
                    aboutMe,
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: fontSize,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            //padding: const EdgeInsets.all(padding),
            title: Text(
              'Computer Languages currently learning',
              style: theme.textTheme.displaySmall
                  ?.copyWith(fontSize: fontSize - 3),
            ),
            leading: Icon(
              TablerIcons.code,
              size: fontSize + 10,
            ),
          ),
          const Padding(padding: EdgeInsets.all(padding / 2)),
          Center(
            child: OverflowBar(
              spacing: padding,
              overflowAlignment: OverflowBarAlignment.end,
              children: [
                clangButton(
                  FlutterDEVICON.c_plain,
                  currentWidth,
                  'c',
                ),
                clangButton(
                  FlutterDEVICON.cplusplus_plain,
                  currentWidth,
                  'c%2B%2B',
                ),
                clangButton(
                  FlutterDEVICON.html5_plain,
                  currentWidth,
                  'html',
                ),
              ],
            ),
          ),
          Center(
            child: OverflowBar(
              spacing: padding,
              overflowAlignment: OverflowBarAlignment.end,
              children: [
                clangButton(
                  FlutterDEVICON.flutter_plain,
                  currentWidth,
                  'dart',
                ),
                clangButton(
                  FlutterDEVICON.rust_plain,
                  currentWidth,
                  'rust',
                ),
                clangButton(
                  FlutterDEVICON.python_plain,
                  currentWidth,
                  'python',
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(padding)),
          ListTile(
            //padding: const EdgeInsets.all(padding),
            title: Text(
              'Languages I know!',
              style: theme.textTheme.displaySmall
                  ?.copyWith(fontSize: fontSize - 3),
            ),
            leading: Icon(
              Icons.translate_rounded,
              size: fontSize,
            ),
          ),
          const Padding(padding: EdgeInsets.all(padding / 2)),
          Center(
            child: OverflowBar(
              spacing: padding,
              overflowAlignment: OverflowBarAlignment.end,
              children: [
                langButton('English', currentWidth, context),
                langButton('Bangla', currentWidth, context),
                langButton('Hindi', currentWidth, context),
                langButton('Sanskrit', currentWidth, context),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(padding * 2)),
          Center(
            child: Text(
              'End!!!',
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}
