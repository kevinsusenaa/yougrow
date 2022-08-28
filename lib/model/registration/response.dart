class RegistrationResponse {
  String? timestamp;
  int? status;
  String? error;
  String? path;

  RegistrationResponse({this.timestamp, this.status, this.error, this.path});

  RegistrationResponse.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    status = json['status'];
    error = json['error'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timestamp'] = timestamp;
    data['status'] = status;
    data['error'] = error;
    data['path'] = path;
    return data;
  }
}