import 'package:mobx/mobx.dart';
import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/helper/helper.dart';
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

  @computed
  String? get validateEmail => Validators().email(email);

  @computed
  String? get validatePassword => Validators().email(password);

  @computed
  bool get validateForm => validateEmail == null && validatePassword == null;

  @action
  Future<bool> register() async {
    if (validateForm) {
      UserCredentials? _user =
          await storage?.setEmailAndPassword(email: email, password: password);

      return (_user?.email?.isNotEmpty ?? false) &&
          (_user?.password?.isNotEmpty ?? false);
    }
    return false;
  }

  @action
  Future<bool> login() async {
    if (validateForm) {
      UserCredentials? _user = await storage?.getPasswordViaEmail(email: email);
      return (_user?.email?.isNotEmpty ?? false) &&
          (_user?.password?.isNotEmpty ?? false);
    }
    return false;
  }

  @action
  Future<bool> logout() async {
    UserCredentials? _user = await storage?.logout(email);
    return (_user?.email?.isEmpty ?? false) &&
        (_user?.password?.isEmpty ?? false);
  }

  @action
  Future<UserCredentials?> autoLogin() async =>
      await storage?.checkSignedUser();
}
