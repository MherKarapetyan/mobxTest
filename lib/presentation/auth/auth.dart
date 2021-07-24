import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/helper/routes.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

class AuthPage extends StatelessWidget {
  final AuthModule _auth = AuthModule();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        name: AppRoutes.auth,
        builder: (_) {
          if (_auth.loading) return Center(child: CircularProgressIndicator());
          return Center(
            child: Text(
              '${_auth.email}',
              style: Theme.of(context).textTheme.headline4,
            ),
          );
        },
      ),
    );
  }
}
