import 'package:deeplink_tester/core/theme/app_colors.dart';
import 'package:flutter/material.dart';


ThemeData buildDarkTheme() {

  final TextTheme darkTextTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 57.0, color: darkTextColor),
  displayMedium: TextStyle(fontSize: 45.0, color: darkTextColor),
  displaySmall: TextStyle(fontSize: 36.0, color: darkTextColor),

  // Títulos de seção
  headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: darkTextColor),
  headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: darkTextColor),
  headlineSmall: TextStyle(fontSize: 24.0, color: darkTextColor),

  // Títulos de cards e widgets
  titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600, color: darkTextColor),
  titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: darkTextColor),
  titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: darkTextColor),

  // Corpo de texto principal
  bodyLarge: TextStyle(fontSize: 16.0, color: darkTextColor),
  bodyMedium: TextStyle(fontSize: 14.0, color: darkTextColor),
  bodySmall: TextStyle(fontSize: 12.0, color: darkTextColor),

  // Botões e textos auxiliares (Legendas)
  labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white), // Cor do texto do botão (Branco)
  labelMedium: TextStyle(fontSize: 12.0, color: hintColorDark), // Para legendas e hints
  labelSmall: TextStyle(fontSize: 10.0, color: hintColorDark),
);
  
  return ThemeData(
    textTheme: darkTextTheme,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(primaryColor.value, <int, Color>{
        500: primaryColor,
      }),
      accentColor: primaryColor,
      backgroundColor: const Color(0xFF333333), // Fundo Principal Escuro
      cardColor: const Color(0xFF555555), // Fundo dos itens de histórico
      errorColor: const Color(0xFFCF6679),
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: const Color(0xFF333333), // Fundo da Tela
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF444444),
      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Color(0xFF555555)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: primaryColor, width: 2.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        elevation: 5,
        shadowColor: primaryColor.withOpacity(0.5),
      ),
    ),
    cardTheme: CardThemeData(
      color: const Color.fromARGB(0, 85, 85, 85), // Cor dos itens de Histórico
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 6),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.white.withOpacity(0.7),
    ),
  );
}
