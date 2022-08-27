class LoginResponse {
  String? status;
  String? timestamp;
  LoginResponseResul? result;
  String? message;
  String? trace;
  String? path;
  String? error;

  LoginResponse(
      {this.status,
        this.timestamp,
        this.result,
        this.message,
        this.trace,
        this.path,
        this.error});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    timestamp = json['timestamp'];
    result =
    json['result'] != null ? LoginResponseResul.fromJson(json['result']) : null;
    message = json['message'];
    trace = json['trace'];
    path = json['path'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['message'] = this.message;
    data['trace'] = this.trace;
    data['path'] = this.path;
    data['error'] = this.error;
    return data;
  }
}

class LoginResponseResul {
  String? id;
  String? createBy;
  String? createDate;
  String? modifyBy;
  String? modifyDate;
  String? version;
  String? status;
  String? code;
  String? name;
  String? username;
  String? email;
  String? password;
  String? birthDate;
  String? gender;
  String? phone;
  String? address;
  String? holyBaptismDate;
  String? holySealingDate;
  String? confirmationDate;
  String? specialization;
  String? profilePicture;
  String? provinceId;
  String? province;
  String? cityId;
  String? city;
  String? congregationId;
  String? congregation;
  String? holyBaptismCongregationId;
  String? holyBaptismCongregation;
  String? holySealingCongregationId;
  String? holySealingCongregation;
  String? confirmationCongregationId;
  String? confirmationCongregation;
  String? activeCongregationId;
  String? activeCongregation;
  String? token;
  String? file;

  LoginResponseResul(
      {this.id,
        this.createBy,
        this.createDate,
        this.modifyBy,
        this.modifyDate,
        this.version,
        this.status,
        this.code,
        this.name,
        this.username,
        this.email,
        this.password,
        this.birthDate,
        this.gender,
        this.phone,
        this.address,
        this.holyBaptismDate,
        this.holySealingDate,
        this.confirmationDate,
        this.specialization,
        this.profilePicture,
        this.provinceId,
        this.province,
        this.cityId,
        this.city,
        this.congregationId,
        this.congregation,
        this.holyBaptismCongregationId,
        this.holyBaptismCongregation,
        this.holySealingCongregationId,
        this.holySealingCongregation,
        this.confirmationCongregationId,
        this.confirmationCongregation,
        this.activeCongregationId,
        this.activeCongregation,
        this.token,
        this.file});

  LoginResponseResul.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createBy = json['createBy'];
    createDate = json['createDate'];
    modifyBy = json['modifyBy'];
    modifyDate = json['modifyDate'];
    version = json['version'];
    status = json['status'];
    code = json['code'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    birthDate = json['birthDate'];
    gender = json['gender'];
    phone = json['phone'];
    address = json['address'];
    holyBaptismDate = json['holyBaptismDate'];
    holySealingDate = json['holySealingDate'];
    confirmationDate = json['confirmationDate'];
    specialization = json['specialization'];
    profilePicture = json['profilePicture'];
    provinceId = json['provinceId'];
    province = json['province'];
    cityId = json['cityId'];
    city = json['city'];
    congregationId = json['congregationId'];
    congregation = json['congregation'];
    holyBaptismCongregationId = json['holyBaptismCongregationId'];
    holyBaptismCongregation = json['holyBaptismCongregation'];
    holySealingCongregationId = json['holySealingCongregationId'];
    holySealingCongregation = json['holySealingCongregation'];
    confirmationCongregationId = json['confirmationCongregationId'];
    confirmationCongregation = json['confirmationCongregation'];
    activeCongregationId = json['activeCongregationId'];
    activeCongregation = json['activeCongregation'];
    token = json['token'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createBy'] = this.createBy;
    data['createDate'] = this.createDate;
    data['modifyBy'] = this.modifyBy;
    data['modifyDate'] = this.modifyDate;
    data['version'] = this.version;
    data['status'] = this.status;
    data['code'] = this.code;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['birthDate'] = this.birthDate;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['holyBaptismDate'] = this.holyBaptismDate;
    data['holySealingDate'] = this.holySealingDate;
    data['confirmationDate'] = this.confirmationDate;
    data['specialization'] = this.specialization;
    data['profilePicture'] = this.profilePicture;
    data['provinceId'] = this.provinceId;
    data['province'] = this.province;
    data['cityId'] = this.cityId;
    data['city'] = this.city;
    data['congregationId'] = this.congregationId;
    data['congregation'] = this.congregation;
    data['holyBaptismCongregationId'] = this.holyBaptismCongregationId;
    data['holyBaptismCongregation'] = this.holyBaptismCongregation;
    data['holySealingCongregationId'] = this.holySealingCongregationId;
    data['holySealingCongregation'] = this.holySealingCongregation;
    data['confirmationCongregationId'] = this.confirmationCongregationId;
    data['confirmationCongregation'] = this.confirmationCongregation;
    data['activeCongregationId'] = this.activeCongregationId;
    data['activeCongregation'] = this.activeCongregation;
    data['token'] = this.token;
    data['file'] = this.file;
    return data;
  }
}