import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

import '../config/http_client.dart';
import '../model/common/area.dart';
import '../model/common/province.dart';

class CommonDataClient{
  final HttpClient _httpClient = HttpClient();

  Future<List<GeoBoundary>> getProvince() async {
    String urlPath = "/api/geoboundary/province";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get province response : ${response.data}");

    return List<GeoBoundary>.from(jsonDecode(response.data));
  }

  Future<List<GeoBoundary>> getCityByProvinceId(String provinceId) async {
    String urlPath = "/api/geoboundary/province/?province=$provinceId";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get CityByProvinceId response : ${response.data}");

    return List<GeoBoundary>.from(jsonDecode(response.data));
  }

  Future<List<Area>> getDistrict() async{
    String urlPath = "/api/area/district";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get district response : ${response.data}");

    return List<Area>.from(jsonDecode(response.data));
  }

  Future<List<Area>> getSubDistrictByDistrictId(String districtId) async {
    String urlPath = "/api/area/subdistrict?district=$districtId";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get sub district response : ${response.data}");

    return List<Area>.from(jsonDecode(response.data));
  }
}