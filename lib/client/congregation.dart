import 'package:dio/dio.dart';
import 'package:yougrow/config/http_client.dart';
import 'package:yougrow/model/common/page_request.dart';
import 'package:yougrow/model/congregation/get_all_congregation_reponse.dart';

class CongregationClient{
  final HttpClient _httpClient = HttpClient();

  Future<GetAllCongregationResponse> getAllCongregation(PageRequest pageRequest) async {
    String urlPath = "/api/congregation?size=${pageRequest.size}&page=${pageRequest.page}";

    if(pageRequest.search != null && pageRequest.search != ""){
      urlPath = "$urlPath&search=${pageRequest.search}";
    }

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get all congregation response : ${response.data}");

    return GetAllCongregationResponse.fromJson(response.data);
  }
}