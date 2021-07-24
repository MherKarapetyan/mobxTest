import 'package:mobx/mobx.dart';
import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/internal/dependencies/storage_module.dart';
part 'auth_module.g.dart';

class AuthModule = _AuthModule with _$AuthModule;

abstract class _AuthModule with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  StorageUtil? storage = StorageModule.storageUtil();

  @observable
  bool _loadingState = false;

  @computed
  bool get loading => _loadingState;

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

  @action
  Future<UserCredentials?> autoLogin() async =>
      await storage?.checkSignedUser();
}
