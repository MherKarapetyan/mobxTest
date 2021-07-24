import 'package:flutter/material.dart' show runApp;
import 'package:mobx_with_clean_archtecture/helper/configs.dart';
import 'package:mobx_with_clean_archtecture/internal/application.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

void main() async {
  Configs.init();

  runApp(App(user: await AuthModule().autoLogin()));
}
