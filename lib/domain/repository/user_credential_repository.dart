import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';

abstract class UserCredentialsRepository {
  Future<UserCredentials> getPasswordViaEmail({required String email});
  Future<UserCredentials> setEmailAndPassword({
    required String email,
    required String password,
  });
}
