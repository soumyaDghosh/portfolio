// ignore: avoid_web_libraries_in_flutter

import 'dart:html' as html;

html.WindowBase openUrl(String url) => html.window.open(url, '');
