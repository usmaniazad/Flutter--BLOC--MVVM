import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../api/network/api_provider.dart';
import '../respository_impl/auth_repository_impl.dart';

class AuthViewModel with ChangeNotifier {
  static AuthViewModel? _instance;

  AuthViewModel._private() {
    _instance = this;
  }

  var _loading = false;

  bool get isLoading => _loading;


  static AuthViewModel get getInstance {
    if (_instance == null) return AuthViewModel._private();
    return _instance!;
  }

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _authRepository = AuthRepositoryImpl();

  void checkValidation() {

    if (emailController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Email should not be empty!");
      return;
    } else if (!emailController.text.isEmail) {
      Fluttertoast.showToast(msg: "Email is not correct!");
      return;
    } else if (passwordController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Password should not be empty!");
      return;
    } else {
      doSafeLogin();
    }
  }

  Future<void> doSafeLogin() async {
    _loading = true;
    notifyListeners();
    try {
      final loginResponse = await _authRepository.signIn(
          emailController.text, passwordController.text);
      Fluttertoast.showToast(msg: loginResponse!.responseMessage!);
      _loading = false;
      notifyListeners();
    } on FetchDataException catch (exception) {
      Fluttertoast.showToast(msg: exception.details.toString());
      _loading = false;
      notifyListeners();
    } on BadRequestException catch (exception) {
      Fluttertoast.showToast(msg: exception.details.toString());
      _loading = false;
      notifyListeners();
    } on UnauthorisedException catch (exception) {
      Fluttertoast.showToast(msg: exception.message.toString());
      _loading = false;
      notifyListeners();
    }
  }
}
