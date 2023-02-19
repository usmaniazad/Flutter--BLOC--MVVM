import 'package:bloc_mvvm/model/login/login_model.dart';

abstract class AccountState {}

class AccountInitial extends AccountState {}

class LoadingState extends AccountState {}

class AccountSuccess extends AccountState {}

class AccountButtonDisable extends AccountState {}

class AccountButtonEnable extends AccountState {}

class ChangePasswordButtonDisable extends AccountState {}

class ChangePasswordButtonEnable extends AccountState {}

class InitialState extends AccountState {}

class SuccessState extends AccountState {
  SuccessState({this.response});
  final LoginModel? response;
}

class ErrorState extends AccountState {
  ErrorState({this.error});
  final String? error;
}