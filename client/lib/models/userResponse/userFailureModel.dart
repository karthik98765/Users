class UserfailureModel {
  int? status;
  String? success;
  String? message;

  UserfailureModel({this.status, this.success, this.message});

  UserfailureModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    message = json['message'];
  }
}