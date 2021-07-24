// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_module.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeModule on _HomeModule, Store {
  final _$signedUserAtom = Atom(name: '_HomeModule.signedUser');

  @override
  UserCredentials get signedUser {
    _$signedUserAtom.reportRead();
    return super.signedUser;
  }

  @override
  set signedUser(UserCredentials value) {
    _$signedUserAtom.reportWrite(value, super.signedUser, () {
      super.signedUser = value;
    });
  }

  final _$passwordAtom = Atom(name: '_HomeModule.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_HomeModuleActionController = ActionController(name: '_HomeModule');

  @override
  void setSignedUser(UserCredentials value) {
    final _$actionInfo = _$_HomeModuleActionController.startAction(
        name: '_HomeModule.setSignedUser');
    try {
      return super.setSignedUser(value);
    } finally {
      _$_HomeModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteSignedUser(UserCredentials value) {
    final _$actionInfo = _$_HomeModuleActionController.startAction(
        name: '_HomeModule.deleteSignedUser');
    try {
      return super.deleteSignedUser(value);
    } finally {
      _$_HomeModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
signedUser: ${signedUser},
password: ${password}
    ''';
  }
}
