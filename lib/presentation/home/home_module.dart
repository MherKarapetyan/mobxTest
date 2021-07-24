import 'package:mobx/mobx.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
part 'home_module.g.dart';

class HomeModule = _HomeModule with _$HomeModule;

abstract class _HomeModule with Store {
  @observable
  late UserCredentials signedUser;

  @observable
  String password = '';

  @action
  void setSignedUser(UserCredentials value) => signedUser = value;

  @action
  void deleteSignedUser(UserCredentials value) {}
}
