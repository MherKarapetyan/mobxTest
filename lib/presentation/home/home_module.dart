import 'package:mobx/mobx.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';

part 'home_module.g.dart';

class HomeModule = _HomeModule with _$HomeModule;

abstract class _HomeModule with Store {
  @observable
  UserCredentials? signedUser;

  @observable
  bool _loadingState = false;

  @computed
  bool get loading => _loadingState;

  @action
  void setSignedUser(UserCredentials value) => signedUser = value;

  @action
  void deleteSignedUser(UserCredentials value) {}

  @action
  Future<UserCredentials?> autoLogin() async {
    _loadingState = true;
    signedUser = await AuthModule().autoLogin();
    _loadingState = false;
  }
}
