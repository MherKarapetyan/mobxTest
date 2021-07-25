import 'package:flutter/material.dart' show runApp;
import 'package:flutter/services.dart'
    show SystemChrome, SystemUiOverlayStyle, Brightness;
import 'package:flutter/widgets.dart' show WidgetsFlutterBinding;
import 'package:mobx_with_clean_archtecture/internal/application.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

class Configs {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Set statusbar color.
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    // Run flutter app and send logged user as argument.
    runApp(App(user: await AuthModule().autoLogin()));
  }
}
