class Blog {
  String? createBy;
  String? createDate;
  String? modifyBy;
  String? modifyDate;
  int? version;
  int? status;
  String? id;
  String? title;
  String? subTitle;
  String? highlight;
  String? content;
  String? image;

  Blog(
      {this.createBy,
        this.createDate,
        this.modifyBy,
        this.modifyDate,
        this.version,
        this.status,
        this.id,
        this.title,
        this.subTitle,
        this.highlight,
        this.content,
        this.image});

  Blog.fromJson(Map<String, dynamic> json) {
    createBy = json['createBy'];
    createDate = json['createDate'];
    modifyBy = json['modifyBy'];
    modifyDate = json['modifyDate'];
    version = json['version'];
    status = json['status'];
    id = json['id'];
    title = json['title'];
    subTitle = json['subTitle'];
    highlight = json['highlight'];
    content = json['content'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createBy'] = this.createBy;
    data['createDate'] = this.createDate;
    data['modifyBy'] = this.modifyBy;
    data['modifyDate'] = this.modifyDate;
    data['version'] = this.version;
    data['status'] = this.status;
    data['id'] = this.id;
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    data['highlight'] = this.highlight;
    data['content'] = this.content;
    data['image'] = this.image;
    return data;
  }
}