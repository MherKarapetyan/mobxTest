import 'package:mobx_with_clean_archtecture/data/mapper/credentials_mapper.dart';
import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/data/storage/request/credentials_body.dart';
import 'package:mobx_with_clean_archtecture/data/storage/service/storage_service.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/helper/helper.dart';

class StorageUtil {
  final StorageService _storageService;

  const StorageUtil(this._storageService);

  ///
  /// [getPasswordViaEmail] function try to find selected email's password.
  ///
  /// Gets an arguments:
  /// * `required String email`
  ///
  /// Function returns `UserCredentials` object, that contains founded password or null.
  ///
  Future<UserCredentials> getPasswordViaEmail({
    required String email,
  }) async {
    final CredentialsBody body = CredentialsBody(email: email);
    final UserResponse result = await _storageService.getPasswordViaEmail(body);
    if (result.error?.isNotEmpty ?? false)
      Snackbars().showMessage(text: result.error!);
    return CredentialsMapper.fromStorage(result);
  }

  ///
  /// [setEmailAndPassword] function store email and password in `StorageService`
  ///
  /// Gets an arguments:
  /// * `required String email`
  /// * `required String password`
  ///
  /// Function creates a `CredentialsBody` model inside of function and convert to
  /// `UserCredentials` model, after that return this object.
  ///
  Future<UserCredentials> setEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final CredentialsBody body =
        CredentialsBody(email: email, password: password);
    final UserResponse result = await _storageService.setEmailAndPassword(body);
    if (result.error?.isNotEmpty ?? false)
      Snackbars().showMessage(text: result.error!);
    return CredentialsMapper.fromStorage(result);
  }

  ///
  /// [checkSignedUser] function try to find signed user's email.
  ///
  Future<UserCredentials> checkSignedUser() async {
    final UserResponse result = await _storageService.checkSignedUser();
    return CredentialsMapper.fromStorage(result);
  }

  ///
  /// [checkSignedUser] function try to find signed user's email.
  ///
  Future<UserCredentials> logout(String key) async {
    final UserResponse result = await _storageService.deleteSignedAccount();
    if (result.error?.isNotEmpty ?? false)
      Snackbars().showMessage(text: result.error!);
    return CredentialsMapper.fromStorage(result);
  }
}
