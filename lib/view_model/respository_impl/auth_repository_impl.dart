
import '../../api/network/apis/login_api.dart';
import '../../model/login/login_model.dart';
import '../respository/auth_repository.dart';


class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<LoginModel>? signIn(String email, String password) async {
    final response = await AuthApi(
        email: email, password: password, authType: AuthType.login)
        .request();
    return LoginModel.fromJson(response);
  }

  @override
  Future<LoginModel>? signUp(String phoneNumber,
      String name,
      String email,
      String password,) async {
    final response = await AuthApi(
        name: name,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
            authType: AuthType.signUp)
        .request();
    return LoginModel.fromJson(response);
  }



}
