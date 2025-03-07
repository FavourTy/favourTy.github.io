import 'package:favourty/constants/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isSelected = false;
  bool get isSelected => _isSelected;
  ThemeData _themeData = AppTheme.lightMode;
  ThemeData get themeData => _themeData;
  void toggleTheme() {
    if (_themeData == AppTheme.lightMode) {
      _themeData = AppTheme.darkmode;
    } else {
      _themeData = AppTheme.lightMode;
    }
    _isSelected = !_isSelected;
    notifyListeners();
  }
}
