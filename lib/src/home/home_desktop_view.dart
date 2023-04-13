import 'package:flutter/material.dart';
import 'package:responsive_panel_template/src/constants.dart';
import 'package:responsive_panel_template/src/theme/theme.dart';

class DesktopHomeView extends StatelessWidget {
  const DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseScaffold(
      title: 'D E S K T O P',
      isDesktop: true,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyDrawer(),
          Expanded(flex: 3, child: Container()),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: darkBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
