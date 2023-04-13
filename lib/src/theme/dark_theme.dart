part of 'theme.dart';

ThemeData darkThemeData = ThemeData.from(
  textTheme: TextTheme(
    //Body text theme
    bodyLarge: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 18),
    bodyMedium: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 16),
    bodySmall: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 14),
    //Title text theme
    titleLarge: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 24, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 22, fontWeight: FontWeight.w600),
    titleSmall: GoogleFonts.nunitoSans(color: darkWhite, fontSize: 20, fontWeight: FontWeight.w600),
  ),
  colorScheme: const ColorScheme.dark(
    background: darkBackgroundColor,
  ),
);
