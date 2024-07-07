import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitras/init/theme/all_app_theme.dart';

import 'base_theme.dart';

class ThemeService {
  static ThemeService instance = ThemeService._();

  ThemeService._();

  List<Color> randomColors = [
    Color(0xFFF9A825),
    Color(0xFF2E7D32),
    Color(0xFF4527A0),
    Color(0xFFEF6C00),
    Color(0xFFC62828),
    Color(0xFF6A1B9A),
    Color(0xFF1565C0),
    Color(0xFFD84315),
    Color(0xFF0277BD),
    Color(0xFF9E9D24),
    Color(0xFF558B2F),
    Color(0xFF00838F),
    Color(0xFF283593),
    Color(0xFF00695C),
    Color(0xFFAD1457),
    Color(0xFF4E342E),
    Color(0xFF424242),
    Color(0xFFFF8F00),
    Color(0xFF37474F),
  ];


  Color optionsButtonColor = Color(0xFFFF8F00);
  Color additionalMaterialColor = Color(0xFFAD1457);

  BaseTheme baseTheme = AllAppTheme();


  Color getRandomColor(int index) {
    try {
      return randomColors[
      index % (ThemeService.instance.randomColors.length - 1)];
    } catch (exception) {
      return randomColors[0];
    }
  }



  ThemeData initialTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    textTheme: GoogleFonts.robotoTextTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0,
    ),
  );
}
