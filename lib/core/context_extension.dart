import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  bool get isDark {
    return theme.brightness == Brightness.dark;
  }

  bool get isLight {
    return theme.brightness == Brightness.light;
  }
}
