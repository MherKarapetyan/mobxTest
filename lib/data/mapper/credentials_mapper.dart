import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';

///
/// [CredentialsMapper] class is responsible for converting data models.
///
class CredentialsMapper {
  ///
  /// [fromStorage] function is responsible for converting `UserResponse`
  /// object to `UserCredentials`.
  ///
  UserCredentials fromStorage(UserResponse response) => UserCredentials(
        email: response.email,
        password: response.password,
      );
}
