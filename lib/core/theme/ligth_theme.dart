// import 'package:deeplink_tester/theme/app_colors.dart';
// import 'package:flutter/material.dart';

// ThemeData buildLightTheme() {
//   final baseTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: AppColors.accentColor,
//     scaffoldBackgroundColor: AppColors.lightSurface,
//     cardColor: AppColors.lightSurface,
//   );

//   return baseTheme.copyWith(
//     colorScheme: baseTheme.colorScheme.copyWith(
//       primary: AppColors.accentColor,
//       secondary: AppColors.accentColor,
//       surface: AppColors.lightSurface,
//       onPrimary: AppColors.lightPrimaryText,
//       onSurface: AppColors.lightPrimaryText,
//       brightness: Brightness.light,
//       tertiary: AppColors.lightContrast,
//     ),

//     textTheme: baseTheme.textTheme
//         .apply(
//           bodyColor: AppColors.lightPrimaryText,
//           displayColor: AppColors.lightPrimaryText,
//         )
//         .copyWith(
//           titleSmall: TextStyle(color: AppColors.lightSecondaryText),
//           bodySmall: TextStyle(color: AppColors.lightSecondaryText),
//         ),

//     bottomNavigationBarTheme: baseTheme.bottomNavigationBarTheme.copyWith(
//       backgroundColor: AppColors.lightContrast,
//       unselectedItemColor: AppColors.darkPrimaryText,
//       selectedItemColor: AppColors.accentColor,
//     ),

//     inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
//       filled: true,
//       fillColor: AppColors.lightSurface,
//       hintStyle: TextStyle(
//         color: AppColors.lightSecondaryText.withOpacity(0.6),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(
//           color: AppColors.lightSecondaryText.withOpacity(0.5),
//         ),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: const BorderSide(color: AppColors.accentColor, width: 2),
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),

//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.accentColor,
//         foregroundColor: AppColors.lightPrimaryText,
//       ),
//     ),

//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.lightContrast,
//       titleTextStyle: TextStyle(
//         color: AppColors.darkPrimaryText,
//         fontWeight: FontWeight.w500,
//         fontSize: 24
//       ),
//       elevation: 1,
//     ),
//   );
// }
