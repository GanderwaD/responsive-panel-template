import 'package:flutter/material.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text(
          'Tablet\n H O M E \n ${size.width}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
