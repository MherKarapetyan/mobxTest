import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/data/storage/request/credentials_body.dart';

class StorageService {
  static const String Email = 'email';
  static const String Password = 'password';
  static const String SignedEmail = 'signedEmail';

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
          .write(key: SignedEmail, value: credential.email!);
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

      if (await FlutterSecureStorage().containsKey(key: credentials.email!)) {
        _error = 'User already registered';
      } else {
        await FlutterSecureStorage()
            .write(key: credentials.email!, value: credentials.password);

        await FlutterSecureStorage()
            .write(key: SignedEmail, value: credentials.email!);
        _status =
            await FlutterSecureStorage().containsKey(key: credentials.email!);
      }
    }
    if (_status) _error = 'User regitered successfully.';

    return UserResponse(
      email: _status ? credentials.email : null,
      password: _status ? credentials.password : null,
      requestStatus: _status,
      error: _error,
    );
  }

  Future<UserResponse> checkSignedUser() async {
    bool _status = false;
    String? _error = 'Signed User doesn\'t exists';
    String? _email;

    _email = await FlutterSecureStorage().read(key: SignedEmail);
    _status = await FlutterSecureStorage().containsKey(key: SignedEmail);

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
    await FlutterSecureStorage().delete(key: SignedEmail);
    return UserResponse(
      email: null,
      password: null,
      requestStatus: _status,
      error: _error,
    );
  }
}
