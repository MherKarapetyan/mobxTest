import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/helper/routes.dart';
import 'package:mobx_with_clean_archtecture/presentation/home/home_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/widgets/loading.dart';

// final AuthModule _auth = AuthModule();

class HomePage extends StatelessWidget {
  final HomeModule _home = HomeModule();

  @override
  StatelessElement createElement() {
    _home.autoLogin();
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: _home.logout)
        ],
      ),
      body: Observer(
        name: AppRoutes.home,
        builder: (_) {
          return Stack(children: [
            if (_home.loading) const Loading(),
            Center(
              child: Text(
                '${_home.signedUser?.email}',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ]);
        },
      ),
    );
  }
}
