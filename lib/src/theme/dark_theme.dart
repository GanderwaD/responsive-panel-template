part of 'theme.dart';

ThemeData darkThemeData = ThemeData.from(
  textTheme: const TextTheme(
    //Body text theme
    bodyLarge: TextStyle(color: darkWhite, fontSize: 18),
    bodyMedium: TextStyle(color: darkWhite, fontSize: 16),
    bodySmall: TextStyle(color: darkWhite, fontSize: 14),

    //Label text theme
    labelLarge: TextStyle(color: darkWhite, fontSize: 18),
    labelMedium: TextStyle(color: darkWhite, fontSize: 16),
    labelSmall: TextStyle(color: darkWhite, fontSize: 14),
    
    //Title text theme
    titleLarge: TextStyle(color: darkWhite, fontSize: 24, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(color: darkWhite, fontSize: 22, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(color: darkWhite, fontSize: 20, fontWeight: FontWeight.w600),
  ),
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    background: darkBackgroundColor,
  ),
);
