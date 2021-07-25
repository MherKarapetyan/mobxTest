import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';

abstract class UserCredentialsRepository {
  Future<UserCredentials> login({
    required String email,
    required String password,
  });
  Future<UserCredentials> logout();
  Future<UserCredentials> checkSignedUser();
  Future<UserCredentials> setEmailAndPassword({
    required String email,
    required String password,
  });
}
