class UserModelAdmin {
  int id;
  String name;
  String email;
  String password;
  String roles;
  String phoneNumber;
  String profilePhoto;
  String gender;
  String token;

  UserModelAdmin(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.phoneNumber,
      this.profilePhoto,
      this.gender});

  // constructor data dari json
  UserModelAdmin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    roles = json['roles'];
    phoneNumber = json['phoneNumber'];
    profilePhoto = json['profilePhoto'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'roles': roles,
      'phoneNumber': phoneNumber,
      'profilePhoto': profilePhoto,
      'gender': gender,
    };
  }
}
