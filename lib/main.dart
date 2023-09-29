import 'package:flutter/material.dart';
import 'package:soumyadghosh_io/home_page.dart';
import 'package:soumyadghosh_io/snap_contributed_page.dart';
import 'package:soumyadghosh_io/snap_maintained_page.dart';
import 'package:soumyadghosh_io/snap_published_page.dart';
import 'package:yaru/yaru.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //uncomment if you want full yaru or only the Ubuntu font here
      theme: yaruLight,
      darkTheme: yaruDark,
      // then comment 20 and 21
      //theme: _m3Theme().copyWith(textTheme: yaruLight.textTheme),
      //darkTheme: _m3Theme(brightness: Brightness.dark)
      //    .copyWith(textTheme: yaruDark.textTheme),
      home: const HomePage(),
      routes: {
        '/home': (_) => const HomePage(),
        '/snapMaintained': (_) => const SnapMaintainedPage(),
        '/snapPublished': (_) => const SnapPublishedPage(),
        '/snapContributed': (_) => const SnapContributedPage(),
      },
    );
  }

  // ignore: unused_element
  ThemeData _m3Theme({
    Brightness brightness = Brightness.light,
    Color color = Colors.purple,
  }) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: brightness,
      ),
    );
  }
}
