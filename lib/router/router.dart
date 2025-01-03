import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wizdoapp/pages/home_page/view/home_page.dart';
import 'package:wizdoapp/pages/personal_info_page/view/personal_info_page.dart';

GlobalKey<NavigatorState> _parentKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();

class Routes {
  static final appRoutes = Provider(
    (ref) => GoRouter(initialLocation: MyHomePage.id, routes: [
      GoRoute(
        path: MyHomePage.id,
        builder: (context, state) => MyHomePage(),
        routes: [
          GoRoute(
            path: PersonalInfoPage.id,
            builder: (context, state) => PersonalInfoPage(),
          ),
        ],
      ),
    ]),
  );
}
