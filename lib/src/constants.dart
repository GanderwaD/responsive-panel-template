import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme/theme.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    Key? key,
    required this.title,
    required this.body,
    this.isDesktop = false,
  }) : super(key: key);

  final String title;
  final Widget body;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          Center(
            child: Text(
              '${size.width.toInt()}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ThemeSwitcher(),
          )
        ],
      ),
      drawer: isDesktop ? null : const MyDrawer(),
      body: body,
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          DrawerHeader(
              child: Icon(
            CupertinoIcons.ant_circle,
            size: 70,
          )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'D A S H B O A R D',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'S E T T I N G S',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'A B O U T',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'L O G O U T',
              ),
            ),
          )
        ],
      ),
    );
  }
}
