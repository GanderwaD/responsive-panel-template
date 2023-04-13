import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_panel_template/src/ref_helper.dart';

part 'colors.dart';
part 'dark_theme.dart';
part 'light_theme.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  var themeIndex = 0;
  if (themeIndex == 0) {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    themeIndex = brightness == Brightness.dark ? ThemeMode.dark.index : ThemeMode.light.index;
  }
  return ThemeMode.values[themeIndex];
});

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(CupertinoIcons.sun_max, color: isLightTheme ? Colors.black : Colors.amber),
        CupertinoSwitch(
          value: ref.watch(themeProvider) == ThemeMode.dark,
          onChanged: (value) {
            final themeMode = value ? ThemeMode.dark : ThemeMode.light;
            ref.read(themeProvider.notifier).state = themeMode;
          },
        ),
        Icon(
          CupertinoIcons.moon,
          color: isLightTheme ? Colors.amber : Colors.white,
        )
      ],
    );
  }
}
