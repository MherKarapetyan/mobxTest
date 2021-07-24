// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_module.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthModule on _AuthModule, Store {
  final _$emailAtom = Atom(name: '_AuthModule.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthModule.password');

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

  final _$_AuthModuleActionController = ActionController(name: '_AuthModule');

  @override
  void changeUsername(String value) {
    final _$actionInfo = _$_AuthModuleActionController.startAction(
        name: '_AuthModule.changeUsername');
    try {
      return super.changeUsername(value);
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_AuthModuleActionController.startAction(
        name: '_AuthModule.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validateEmail() {
    final _$actionInfo = _$_AuthModuleActionController.startAction(
        name: '_AuthModule.validateEmail');
    try {
      return super.validateEmail();
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validatePassword() {
    final _$actionInfo = _$_AuthModuleActionController.startAction(
        name: '_AuthModule.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validateForm() {
    final _$actionInfo = _$_AuthModuleActionController.startAction(
        name: '_AuthModule.validateForm');
    try {
      return super.validateForm();
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  void register() {
    final _$actionInfo =
        _$_AuthModuleActionController.startAction(name: '_AuthModule.register');
    try {
      return super.register();
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login() {
    final _$actionInfo =
        _$_AuthModuleActionController.startAction(name: '_AuthModule.login');
    try {
      return super.login();
    } finally {
      _$_AuthModuleActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
