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
          const Text(
            'M O B İ L E',
            style: TextStyle(color: Colors.amber),
          ),
          const Text(
            'H O M E',
            style: TextStyle(color: Colors.amber),
          ),
          Text(
            '${size.width.toInt()}',
            style: const TextStyle(color: Colors.amber),
          ),
          const SizedBox(height: 100),
          const ThemeSwitcher()
        ],
      ),
    );
  }
}
