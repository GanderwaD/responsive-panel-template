part of 'theme.dart';

ThemeData lightThemeData = ThemeData.from(
  useMaterial3: false,
  textTheme: const TextTheme(
    //Body text theme
    bodyLarge: TextStyle(color: lightGrey, fontSize: 18),
    bodyMedium: TextStyle(color: lightGrey, fontSize: 16),
    bodySmall: TextStyle(color: lightGrey, fontSize: 14),
    //Title text theme
    titleLarge: TextStyle(color: lightGrey, fontSize: 24, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(color: lightGrey, fontSize: 22, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(color: lightGrey, fontSize: 20, fontWeight: FontWeight.w600),
  ),
  colorScheme: const ColorScheme.light(background: lightBackgroundColor, brightness: Brightness.dark),
);
