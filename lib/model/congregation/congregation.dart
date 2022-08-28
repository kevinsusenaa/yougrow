class Congregation {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? latitude;
  String? longitude;
  String? profilePicture;
  String? provinceId;
  String? province;
  String? cityId;
  String? city;
  String? districtId;
  String? district;
  String? subDistrictId;
  String? subDistrict;

  Congregation(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.address,
        this.latitude,
        this.longitude,
        this.profilePicture,
        this.provinceId,
        this.province,
        this.cityId,
        this.city,
        this.districtId,
        this.district,
        this.subDistrictId,
        this.subDistrict});

  Congregation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    profilePicture = json['profilePicture'];
    provinceId = json['provinceId'];
    province = json['province'];
    cityId = json['cityId'];
    city = json['city'];
    districtId = json['districtId'];
    district = json['district'];
    subDistrictId = json['subDistrictId'];
    subDistrict = json['subDistrict'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['profilePicture'] = this.profilePicture;
    data['provinceId'] = this.provinceId;
    data['province'] = this.province;
    data['cityId'] = this.cityId;
    data['city'] = this.city;
    data['districtId'] = this.districtId;
    data['district'] = this.district;
    data['subDistrictId'] = this.subDistrictId;
    data['subDistrict'] = this.subDistrict;
    return data;
  }
}