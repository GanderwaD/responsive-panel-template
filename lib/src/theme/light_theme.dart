part of 'theme.dart';

ThemeData lightThemeData = ThemeData.from(
  textTheme: TextTheme(
    //Body text theme
    bodyLarge: GoogleFonts.nunitoSans(color: lightGrey, fontSize: 18),
    bodyMedium: GoogleFonts.nunitoSans(color: lightGrey,fontSize: 16),
    bodySmall: GoogleFonts.nunitoSans(color: lightGrey,fontSize: 14),
    //Title text theme
    titleLarge: GoogleFonts.nunitoSans(color: lightGrey, fontSize: 24, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.nunitoSans(color: lightGrey, fontSize: 22, fontWeight: FontWeight.w600),
    titleSmall: GoogleFonts.nunitoSans(color: lightGrey, fontSize: 20, fontWeight: FontWeight.w600),
  ),
  colorScheme: const ColorScheme.dark(
    background: lightBackgroundColor,
  ),
);
