import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';
import 'package:mobx_with_clean_archtecture/domain/repository/user_credential_repository.dart';

class Repository extends UserCredentialsRepository {
  final StorageUtil _storageUtil;

  Repository(this._storageUtil);

  @override
  Future<UserCredentials> getPasswordViaEmail({required String email}) =>
      _storageUtil.getPasswordViaEmail(email: email);

  @override
  Future<UserCredentials> setEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _storageUtil.setEmailAndPassword(email: email, password: password);
}
