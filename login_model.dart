class Login {
  bool? status;
  String? message;
  int? id;
  String? name;
  String? userType;
  String? usertype;

  Login(
      {this.status,
        this.message,
        this.id,
        this.name,
        this.userType,
        this.usertype});

  Login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    id = json['Id'];
    name = json['Name'];
    userType = json['UserType'];
    usertype = json['usertype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['UserType'] = this.userType;
    data['usertype'] = this.usertype;
    return data;
  }
}
