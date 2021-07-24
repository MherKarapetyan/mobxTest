import 'package:flutter/material.dart';
import 'package:mobx_with_clean_archtecture/internal/application.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App(user: await AuthModule().autoLogin()));
}
