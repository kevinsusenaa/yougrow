class Area {
  String? createBy;
  String? createDate;
  String? modifyBy;
  String? modifyDate;
  int? version;
  int? status;
  String? id;
  String? name;
  String? description;

  Area(
      {this.createBy,
        this.createDate,
        this.modifyBy,
        this.modifyDate,
        this.version,
        this.status,
        this.id,
        this.name,
        this.description});

  Area.fromJson(Map<String, dynamic> json) {
    createBy = json['createBy'];
    createDate = json['createDate'];
    modifyBy = json['modifyBy'];
    modifyDate = json['modifyDate'];
    version = json['version'];
    status = json['status'];
    id = json['id'];
    name = json['name'];
    description = json['description'];
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
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}