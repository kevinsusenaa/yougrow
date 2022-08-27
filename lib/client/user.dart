import 'package:dio/dio.dart';
import 'package:yougrow/model/login/request.dart';
import 'package:yougrow/model/login/response.dart';
import 'package:yougrow/model/registration/request.dart';
import 'package:yougrow/model/registration/response.dart';

import '../config/http_client.dart';

class UserClient {
  final HttpClient _httpClient = HttpClient();

  Future<LoginResponse> login(LoginRequest request) async{
    String urlPath = "/api/youth/auth";

    Response response = await _httpClient.doPost(urlPath, request.toJson(), <String, dynamic>{});
    print("login response : ${response.data}");

    if(response.statusCode != 200){
      print("unhandled http status code : ${response}");
    }

    return LoginResponse.fromJson(response.data);
  }

  Future<RegistrationResponse> registration(RegistrationRequest request) async {
    String urlPath = "/api/youth/register";

    Map<String,dynamic> payload = <String,dynamic>{};
    payload["name"] = request.name;
    payload["username"] = request.username;
    payload["email"] = request.email;
    payload["password"] = request.password;
    payload["birthDate"] = request.birthDate;
    payload["gender"] = request.gender;
    payload["phone"] = request.phone;
    payload["adress"] = request.address;
    payload["holyBaptismDate"] = request.holyBaptismDate;
    payload["holyBaptismCongregation"] = request.holyBaptismCongregation;
    payload["holySealingDate"] = request.holySealingDate;
    payload["holySealingCongregation"] = request.holySealingCongregation;
    payload["confirmationDate"] = request.confirmationDate;
    payload["confirmationCongregation"] = request.confirmationCongregation;
    payload["activeCongregation"] = request.activeCongregation;
    payload["file"] = MultipartFile.fromFile(request.file?.name ?? "unnamed");

    Response response = await _httpClient.doPostFormData(urlPath, payload, <String, dynamic>{});
    print("registration response : ${response.data}");

    return RegistrationResponse.fromJson(response.data);
  }
}