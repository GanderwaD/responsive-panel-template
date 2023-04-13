import 'package:flutter/material.dart';

class DesktopHomeView extends StatelessWidget {
  const DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text(
          'Desktop\n H O M E \n ${size.width}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
