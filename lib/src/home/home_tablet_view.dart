import 'package:flutter/material.dart';
import 'package:responsive_panel_template/src/constants.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseScaffold(title: 'T A B L E T',body: Container());
  }
}
