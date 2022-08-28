import 'package:yougrow/model/common/sort.dart';

import '../common/pageable.dart';
import 'blog.dart';

class GetAllArticleResponse {
  List<Blog>? content;
  Pageable? pageable;
  bool? last;
  int? totalElements;
  int? totalPages;
  int? size;
  int? number;
  Sort? sort;
  bool? first;
  int? numberOfElements;
  bool? empty;

  GetAllArticleResponse({
      this.content,
      this.pageable,
      this.last,
      this.totalElements,
      this.totalPages,
      this.size,
      this.number,
      this.sort,
      this.first,
      this.numberOfElements,
      this.empty});


  GetAllArticleResponse.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Blog>[];
      json['content'].forEach((v) {
        content!.add(new Blog.fromJson(v));
      });
    }
    pageable = json['pageable'] != null
        ? new Pageable.fromJson(json['pageable'])
        : null;
    last = json['last'];
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
    size = json['size'];
    number = json['number'];
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    first = json['first'];
    numberOfElements = json['numberOfElements'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    if (this.pageable != null) {
      data['pageable'] = this.pageable!.toJson();
    }
    data['last'] = this.last;
    data['totalElements'] = this.totalElements;
    data['totalPages'] = this.totalPages;
    data['size'] = this.size;
    data['number'] = this.number;
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['first'] = this.first;
    data['numberOfElements'] = this.numberOfElements;
    data['empty'] = this.empty;
    return data;
  }
}