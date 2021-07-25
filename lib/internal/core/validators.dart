import 'package:mobx_with_clean_archtecture/internal/core/regexp.dart';

class Validators {
  String? email(String? value) {
    String? error = 'Invalid email';
    if (value?.isEmpty ?? true) {
      error = 'Email can\'t be empty';
    } else if (RegularExpressions.email.hasMatch(value!)) {
      error = null;
    }
    return error;
  }

  String? password(String? value) {
    String? error = 'Invalid password.';
    if (value?.isEmpty ?? true) {
      error = 'Password can\'t be empty';
    } else if (RegularExpressions.password.hasMatch(value!)) {
      error = null;
    }

    return error;
  }
}
