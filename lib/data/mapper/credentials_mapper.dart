import 'package:mobx_with_clean_archtecture/data/storage/model/user_response.dart';
import 'package:mobx_with_clean_archtecture/domain/model/user_credentials.dart';

class CredentialsMapper {
  static UserCredentials fromStorage(UserResponse response) {
    return UserCredentials(
      email: response.email,
      password: response.password,
    );
  }
}
