class UserResponse<T> {
  final bool status;
  final String? error;
  final String? email;
  final String? password;

  UserResponse({this.error, required this.status, this.email, this.password});

  UserResponse.fromApi(Map<String, dynamic> map)
      : status = map['status'],
        error = map['error'],
        email = map['email'],
        password = map['password'];
}
