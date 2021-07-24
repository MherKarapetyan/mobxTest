import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/home/home_module.dart';

// final AuthModule _auth = AuthModule();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeModule _home = HomeModule();

  @override
  void initState() {
    super.initState();
    _home.autoLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (_home.loading) return Center(child: CircularProgressIndicator());

          return Center(
            child: Text(
              '${_home.signedUser?.email}',
              style: Theme.of(context).textTheme.headline4,
            ),
          );
        },
      ),
    );
  }
}
