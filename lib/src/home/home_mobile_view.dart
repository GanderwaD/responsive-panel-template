import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_panel_template/src/constants.dart';
import 'package:responsive_panel_template/src/theme/theme.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseScaffold(title: 'M O B I L E',body: Container());
  }
}
