import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/data/storage/request/credentials_body.dart';
import 'package:mobx_with_clean_archtecture/helper/helper.dart';

class StorageService {
  Future<UserResponse> getPasswordViaEmail(
    CredentialsBody credential,
  ) async {
    String? _pass;
    bool _status = false;
    String? _error = 'Key doesn\'t exists';

    if (credential.email != null) {
      _error = null;
      _status =
          await FlutterSecureStorage().containsKey(key: credential.email!);

      if (_status)
        _pass = await FlutterSecureStorage().read(key: credential.email!);
    }

    return UserResponse(
      password: _pass,
      email: credential.email,
      requestStatus: _status,
      error: _error,
    );
  }

  Future<UserResponse> setEmailAndPassword(
    CredentialsBody credentials,
  ) async {
    bool _status = false;
    String? _error = 'One of credentials doesn\'t exists';

    if (credentials.email != null && credentials.password != null) {
      _error = null;
      await FlutterSecureStorage()
          .write(key: credentials.email!, value: credentials.password);
      _status =
          await FlutterSecureStorage().containsKey(key: credentials.email!);
    }

    return UserResponse(
      email: credentials.email,
      password: credentials.password,
      requestStatus: _status,
      error: _error,
    );
  }

  Future<UserResponse> checkSignedUser() async {
    bool _status = false;
    String? _error = 'Signed User doesn\'t exists';
    String? _email;

    _email = await FlutterSecureStorage().read(key: StorageKeys.SignedEmail);
    _status =
        await FlutterSecureStorage().containsKey(key: StorageKeys.SignedEmail);

    if (_status) _error = null;

    return UserResponse(
      email: _email,
      password: null,
      requestStatus: _status,
      error: _error,
    );
  }
}
