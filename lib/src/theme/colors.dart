part of 'theme.dart';

bool get isLightTheme => R.instance.ref.read(themeProvider) != ThemeMode.dark;
