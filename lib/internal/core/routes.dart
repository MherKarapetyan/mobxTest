import 'package:flutter/material.dart' show Widget, BuildContext;
import 'package:mobx_with_clean_archtecture/presentation/auth/auth.dart';
import 'package:mobx_with_clean_archtecture/presentation/home/home.dart';

/// Provides the routes for app navigation.
/// Routes should be declared as static final members.
class AppRoutes {
  // Named routes
  static const home = '/home';
  static const auth = '/auth';

  static final Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.auth: (context) => AuthPage(),
    AppRoutes.home: (context) => HomePage(),
  };
}
