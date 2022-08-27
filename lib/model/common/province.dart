class GeoBoundary {
  String? id;
  String? geoCode;
  String? name;
  int? geoBoundaryTypeId;
  String? geoBoundaryType;

  GeoBoundary(
      {this.id,
        this.geoCode,
        this.name,
        this.geoBoundaryTypeId,
        this.geoBoundaryType});

  GeoBoundary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    geoCode = json['geoCode'];
    name = json['name'];
    geoBoundaryTypeId = json['geoBoundaryTypeId'];
    geoBoundaryType = json['geoBoundaryType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['geoCode'] = geoCode;
    data['name'] = name;
    data['geoBoundaryTypeId'] = geoBoundaryTypeId;
    data['geoBoundaryType'] = geoBoundaryType;
    return data;
  }
}