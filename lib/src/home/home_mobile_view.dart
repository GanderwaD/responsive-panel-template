import 'package:flutter/material.dart';
import 'package:responsive_panel_template/src/theme/theme.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'M O B I L E',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Text(
            'H O M E',
          ),
          Text(
            '${size.width.toInt()}',
          ),
          // const SizedBox(height: 100),
          Container(height: 100),
          const ThemeSwitcher()
        ],
      ),
    );
  }
}
