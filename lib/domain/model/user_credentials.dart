///
/// Base class for user credentials.
///
/// Class contains `email` and `password` fields.
/// 
class UserCredentials {
  final String? email;
  final String? password;

  const UserCredentials({required this.email, required this.password});
}
