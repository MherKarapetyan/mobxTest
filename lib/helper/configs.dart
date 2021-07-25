import 'package:flutter/services.dart'
    show SystemChrome, SystemUiOverlayStyle, Brightness;
import 'package:flutter/widgets.dart' show WidgetsFlutterBinding;

class Configs {
  static void init() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );
  }
}
