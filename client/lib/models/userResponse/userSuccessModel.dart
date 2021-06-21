class UserSuccessModel {
  int? status;
  bool? success;
  Data? data;
  String? token;

  UserSuccessModel({this.status, this.success, this.data, this.token});

  UserSuccessModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }
}

class Data {
  String? sId;
  String? email;
  int? iV;

  Data({this.sId, this.email, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['__v'] = this.iV;
    return data;
  }
}