import '../api_endpoint.dart';
import '../api_provider.dart';
import '../api_request_reprensentable.dart';

enum AuthType { login, signUp }

class AuthApi extends APIRequestRepresentable {
  final AuthType authType;
  String? name;
  String? email;
  String? phoneNumber;
  String? password;
  String? building;
  String? area;
  String? pincode;
  String? city;
  String? state;

  AuthApi(
      {required this.authType,
      this.name,
      this.phoneNumber,
      this.email,
      this.password,
      this.building,
      this.area,
      this.pincode,
      this.city,
      this.state});

  @override
  get body {
    switch (authType) {
      case AuthType.login:
        return {
          "email": email,
          "password": password,
          "deviceType": "android",
          "deviceToken":
              "dz72rxoqrpanv9x56-yx87:apa91bfnpo2gjes3ad3ouq6j32miie1rqisqhqe1pvfus7m4hgctwjpjftss3hoyy9p1fb1v3djc683lkgzlbd9f5uaac_7j72wvknlzzw0-plcbnnfky6xryhempnv047qkkbjebf7p",
          "offset":440
        };
      case AuthType.signUp:
        return {
          "name": name,
          "email": email,
          "phone": phoneNumber,
          "password": password,
          "cpassword": password,
          "building": building,
          "area": area,
          "pincode": pincode,
          "city": city,
          "state": state,
        };
    }
  }

  @override
  String get endpoint => APIEndpoint.loginApi;

  @override
  Map<String, String>? get headers {

  }

  @override
  HTTPMethod get method {
    switch (authType) {
      case AuthType.login:
        return HTTPMethod.post;
      case AuthType.signUp:
        return HTTPMethod.post;
    }
  }

  @override
  String get path {
    switch (authType) {
      case AuthType.login:
        return APIEndpoint.loginApi;
      case AuthType.signUp:
        return APIEndpoint.signUpApi;
    }
  }

  @override
  Map<String, String>? get query => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => APIEndpoint.baseApi + path;

  @override
  String get contentType => throw UnimplementedError();
}
