// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_module.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthModule on _AuthModule, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??=
          Computed<bool>(() => super.loading, name: '_AuthModule.loading'))
      .value;
  Computed<String?>? _$validateEmailComputed;

  @override
  String? get validateEmail =>
      (_$validateEmailComputed ??= Computed<String?>(() => super.validateEmail,
              name: '_AuthModule.validateEmail'))
          .value;
  Computed<String?>? _$validatePasswordComputed;

  @override
  String? get validatePassword => (_$validatePasswordComputed ??=
          Computed<String?>(() => super.validatePassword,
              name: '_AuthModule.validatePassword'))
      .value;
  Computed<bool>? _$validateFormComputed;

  @override
  bool get validateForm =>
      (_$validateFormComputed ??= Computed<bool>(() => super.validateForm,
              name: '_AuthModule.validateForm'))
          .value;

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

  final _$storageAtom = Atom(name: '_AuthModule.storage');

  @override
  StorageUtil? get storage {
    _$storageAtom.reportRead();
    return super.storage;
  }

  @override
  set storage(StorageUtil? value) {
    _$storageAtom.reportWrite(value, super.storage, () {
      super.storage = value;
    });
  }

  final _$_loadingStateAtom = Atom(name: '_AuthModule._loadingState');

  @override
  bool get _loadingState {
    _$_loadingStateAtom.reportRead();
    return super._loadingState;
  }

  @override
  set _loadingState(bool value) {
    _$_loadingStateAtom.reportWrite(value, super._loadingState, () {
      super._loadingState = value;
    });
  }

  final _$registerAsyncAction = AsyncAction('_AuthModule.register');

  @override
  Future<bool> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  final _$loginAsyncAction = AsyncAction('_AuthModule.login');

  @override
  Future<bool> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$logoutAsyncAction = AsyncAction('_AuthModule.logout');

  @override
  Future<bool> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$autoLoginAsyncAction = AsyncAction('_AuthModule.autoLogin');

  @override
  Future<UserCredentials?> autoLogin() {
    return _$autoLoginAsyncAction.run(() => super.autoLogin());
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
  String toString() {
    return '''
email: ${email},
password: ${password},
storage: ${storage},
loading: ${loading},
validateEmail: ${validateEmail},
validatePassword: ${validatePassword},
validateForm: ${validateForm}
    ''';
  }
}
