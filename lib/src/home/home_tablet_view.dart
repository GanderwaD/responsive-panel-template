import 'package:flutter/material.dart';

import '../theme/theme.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'T A B L E T',
            style: Theme.of(context).textTheme.bodyMedium,
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
