import 'package:flutter/material.dart';

import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';

import 'core/core.dart';

class App extends StatelessWidget {
  final UserCredentials? user;
  App({required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppKeys.navigatorKey,
      routes: AppRoutes.routes,
      initialRoute: user?.email != null ? AppRoutes.home : AppRoutes.auth,
      theme: AppThemes.defaultTheme,
    );
  }
}
