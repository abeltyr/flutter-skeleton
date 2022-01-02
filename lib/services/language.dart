import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LanguageService with ChangeNotifier {
  var box = Hive.box('language');

  fetchLocale() async {}

  void changeLanguage(Locale lang) async {}
}
