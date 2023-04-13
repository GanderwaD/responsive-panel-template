import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_panel_template/src/home/home_desktop_view.dart';
import 'package:responsive_panel_template/src/home/home_mobile_view.dart';
import 'package:responsive_panel_template/src/home/home_tablet_view.dart';
import 'package:responsive_panel_template/src/router/ui_pages.dart';
import 'package:responsive_panel_template/src/widgets/responsive.dart';

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: appNavigatorKey,
    initialLocation: '/',
    // errorBuilder: (context, state) => ,
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          return '/${UiPage.home.name}';
        },
      ),
      GoRoute(
        path: '/home',
        name: UiPage.home.name,
        builder: (context, state) => const Responsive(
          mobile: MobileHomeView(),
          desktop: DesktopHomeView(),
          tablet: TabletHomeView(),
        ),
      ),
    ]);
