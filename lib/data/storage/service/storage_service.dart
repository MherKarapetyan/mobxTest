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
    String? _error = 'User doesn\'t exists';

    if (credential.email != null) {
      _status =
          await FlutterSecureStorage().containsKey(key: credential.email!);
      await FlutterSecureStorage()
          .write(key: StorageKeys.SignedEmail, value: credential.email!);
      if (_status) {
        _error = null;
        _pass = await FlutterSecureStorage().read(key: credential.email!);
      }
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
    String? _error = 'Email or Password is incorrect';

    if (credentials.email != null && credentials.password != null) {
      _error = null;
      await FlutterSecureStorage()
          .write(key: credentials.email!, value: credentials.password);

      await FlutterSecureStorage()
          .write(key: StorageKeys.SignedEmail, value: credentials.email!);
      _status =
          await FlutterSecureStorage().containsKey(key: credentials.email!);
    }
    if (_status) _error = 'User regitered successfully.';

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

  Future<UserResponse> deleteSignedAccount() async {
    bool _status = true;
    String _error = 'Logged out successfully';
    await FlutterSecureStorage().delete(key: StorageKeys.SignedEmail);
    return UserResponse(
      email: null,
      password: null,
      requestStatus: _status,
      error: _error,
    );
  }
}
