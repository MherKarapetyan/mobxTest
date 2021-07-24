import 'dart:convert' show json;

class CredentialsBody {
  final String? email;
  final String? password;

  CredentialsBody({required this.email, this.password});

  Map<String, dynamic> toMap() => {'email': email, 'password': password};
  String toJson() => json.encode({'email': email, 'password': password});
}
