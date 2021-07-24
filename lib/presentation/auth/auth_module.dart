import 'package:mobx/mobx.dart';
part 'auth_module.g.dart';

class AuthModule = _AuthModule with _$AuthModule;

abstract class _AuthModule with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void changeUsername(String value) => email = value;

  @action
  void changePassword(String value) => password = value;

  @action
  bool validateEmail() {
    return false;
  }

  @action
  bool validatePassword() {
    return false;
  }

  @action
  bool validateForm() {
    return false;
  }

  @action
  void register() {}

  @action
  void login() {}
}
