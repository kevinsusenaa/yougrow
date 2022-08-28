import 'package:dio/dio.dart';
import 'package:yougrow/config/http_client.dart';
import 'package:yougrow/model/blog/get_all_spirit_devotion_response.dart';

import '../model/blog/blog.dart';
import '../model/common/page_request.dart';

class BlogClient {
  final HttpClient _httpClient = HttpClient();

  Future<GetAllArticleResponse> getAllSpiritDevotion(PageRequest pageRequest) async {
    String urlPath = "/api/spiritual-devotion?size=${pageRequest.size}&page=${pageRequest.page}";

    if(pageRequest.search != null && pageRequest.search != ""){
      urlPath = "$urlPath&search=${pageRequest.search}";
    }

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get all spirit devotion response : ${response.data}");

    return GetAllArticleResponse.fromJson(response.data);
  }

  Future<Blog> getSpiritDevotionById(String id) async {
    String urlPath = "/api/spiritual-devotion/$id";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get devotion detail response : ${response.data}");

    return Blog.fromJson(response.data);
  }

  Future<GetAllArticleResponse> getAllArticle(PageRequest pageRequest) async {
    String urlPath = "/api/news-article?size=${pageRequest.size}&page=${pageRequest.page}";

    if(pageRequest.search != null && pageRequest.search != ""){
      urlPath = "$urlPath&search=${pageRequest.search}";
    }

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get all article response : ${response.data}");

    return GetAllArticleResponse.fromJson(response.data);
  }

  Future<Blog> getArticleById(String id) async {
    String urlPath = "/api/news-article/$id";

    Response response = await _httpClient.doGet(urlPath, <String, dynamic>{});
    print("get article detail response : ${response.data}");

    return Blog.fromJson(response.data);
  }
}