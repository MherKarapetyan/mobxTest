import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/helper/routes.dart';
import 'package:mobx_with_clean_archtecture/helper/storage_keys.dart';
import 'package:mobx_with_clean_archtecture/internal/application.dart';
import 'package:mobx_with_clean_archtecture/internal/dependencies/storage_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Check signed user,
  final UserCredentials? _user = await AuthModule().autoLogin();

  runApp(App(user: _user));
}
