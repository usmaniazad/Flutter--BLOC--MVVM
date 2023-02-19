import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel{
  String? responseMessage;
  Result? result;

  LoginModel(this.responseMessage, this.result);
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}

@JsonSerializable()
class Result{
  String? id;
  String? token;
  String? fullName;
  String? userType;
  String? email;
  String? mobileNumber;
  String? profilePic;
  bool? isVerified;
  bool? isPersonal_profile_complete;
  bool? isMedical_profile_complete;
  bool? isSubscribe;

  Result(
      this.id,
      this.token,
      this.fullName,
      this.userType,
      this.email,
      this.mobileNumber,
      this.profilePic,
      this.isVerified,
      this.isPersonal_profile_complete,
      this.isMedical_profile_complete,
      this.isSubscribe);

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}