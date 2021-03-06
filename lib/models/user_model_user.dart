class UserModelUser {
  int id;
  String name;
  String email;
  String password;
  String roles;
  String phoneNumber;
  String profilePhoto;
  String gender;
  static String token;

  UserModelUser(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.phoneNumber,
      this.profilePhoto,
      this.roles,
      this.gender});

  // constructor data dari json
  UserModelUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    roles = json['roles'];
    phoneNumber = json['phone_number'];
    profilePhoto = json['profile_photo'];
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
