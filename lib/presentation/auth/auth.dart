import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthModule _module = AuthModule();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Text(
          '${_module.email}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
