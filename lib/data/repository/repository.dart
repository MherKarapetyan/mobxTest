import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/domain/repository/user_credential_repository.dart';

///
/// [Reporit]ory] class for getting Data services and implementing
/// `UserCredentialsRepository`'s methods;
///
class Repository extends UserCredentialsRepository {
  final StorageUtil _storageUtil;

  Repository(this._storageUtil);

  /// [getPasswordViaEmail] function try to login user.
  ///
  /// Gets an arguments:
  /// * `required String email`
  /// * `required String password`
  ///
  /// Function returns UserCredentials object, that contains founded password or null.
  ///
  @override
  Future<UserCredentials> login({
    required String email,
    required String password,
  }) =>
      _storageUtil.login(email: email, password: password);

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
  @override
  Future<UserCredentials> setEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _storageUtil.setEmailAndPassword(email: email, password: password);

  ///
  /// [checkSignedUser] function try to find signed user's email.
  ///
  @override
  Future<UserCredentials> checkSignedUser() => _storageUtil.checkSignedUser();

  ///
  /// [checkSignedUser] function try to find signed user's email
  /// and remove it.
  ///
  @override
  Future<UserCredentials> logout() => _storageUtil.logout();
}
