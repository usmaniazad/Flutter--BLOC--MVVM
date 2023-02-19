import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../api/network/api_provider.dart';
import '../../respository_impl/auth_repository_impl.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AccountState> {
  AuthCubit(super.initialState);

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
    emit(LoadingState());
    try {
      final loginResponse = await _authRepository.signIn(
          emailController.text, passwordController.text);
      Fluttertoast.showToast(msg: loginResponse!.responseMessage!);
      emit(SuccessState(response: loginResponse));
    } on FetchDataException catch (exception) {
      Fluttertoast.showToast(msg: exception.details.toString());
      emit(ErrorState());
    } on BadRequestException catch (exception) {
      Fluttertoast.showToast(msg: exception.details.toString());
      emit(ErrorState());
    } on UnauthorisedException catch (exception) {
      Fluttertoast.showToast(msg: exception.message.toString());
      emit(ErrorState());
    }
  }
}
