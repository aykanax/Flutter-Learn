import 'package:ayks/theme/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = false;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      !isLighTheme ? LighTheme().theme : ThemeData.dark();
}
