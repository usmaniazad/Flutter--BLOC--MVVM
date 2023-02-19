import '../../model/login/login_model.dart';

abstract class AuthRepository {
  Future<LoginModel>? signIn(String email, String password);

  Future<LoginModel>? signUp(String phoneNumber,
      String name,
      String email,
      String password,);
}
