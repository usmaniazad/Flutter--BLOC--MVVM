// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      json['responseMessage'] as String?,
      json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'responseMessage': instance.responseMessage,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['id'] as String?,
      json['token'] as String?,
      json['fullName'] as String?,
      json['userType'] as String?,
      json['email'] as String?,
      json['mobileNumber'] as String?,
      json['profilePic'] as String?,
      json['isVerified'] as bool?,
      json['isPersonal_profile_complete'] as bool?,
      json['isMedical_profile_complete'] as bool?,
      json['isSubscribe'] as bool?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'fullName': instance.fullName,
      'userType': instance.userType,
      'email': instance.email,
      'mobileNumber': instance.mobileNumber,
      'profilePic': instance.profilePic,
      'isVerified': instance.isVerified,
      'isPersonal_profile_complete': instance.isPersonal_profile_complete,
      'isMedical_profile_complete': instance.isMedical_profile_complete,
      'isSubscribe': instance.isSubscribe,
    };
