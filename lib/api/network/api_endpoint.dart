class APIEndpoint {
  //base Api end point
  static String get baseApi => "https://api.gymdoctornow.com/api/v1/";
  static String get baseImageApi => "https://mdayurvediccollege.in/demo/autopart/";

  //auth Api end points
  static String get loginApi => "patient/login";

  static String get signUpApi => "authentication/registration";
  static String get myProfileApi => "user";

  static String get carBrandApi => "car";
  static String get carByIdApi => "models/bycarid/";

  static String get changePasswordApi => "/auth/password/change";

  //Sort Api
  static String get locationListApi => "/location/list/";


}
