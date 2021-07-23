import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/data/storage/request/credentials_body.dart';

class StorageService {
  Future<UserResponse> getPasswordViaEmail(
    CredentialsBody credential,
  ) async {
    String? _pass;

    return UserResponse(
      password: _pass,
      email: credential.email,
      status: _pass != null,
      error: null,
    );
  }

  Future<UserResponse> setEmailAndPassword(
    CredentialsBody credentials,
  ) async {
    return UserResponse(
      email: credentials.email,
      password: credentials.password,
      status: true,
      error: null,
    );
  }
}
