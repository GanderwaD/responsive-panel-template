import 'package:flutter/material.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text(
          'Mobile\n H O M E \n ${size.width}',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
