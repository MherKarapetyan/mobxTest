import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/presentation/home/home_module.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeModule _module = HomeModule();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Text(
          '${_module.signedUser.email}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
