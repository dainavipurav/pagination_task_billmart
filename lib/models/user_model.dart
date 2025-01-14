class UserModel {
  int? age;
  String? firstName;
  String? id;
  String? lastName;
  String? middleName;
  String? occupation;
  String? userImage;

  UserModel(
      {this.age,
      this.firstName,
      this.id,
      this.lastName,
      this.middleName,
      this.occupation,
      this.userImage});

  UserModel.fromJson(Map<String, dynamic> json) {
    age = json['age'];
    firstName = json['firstName'];
    id = json['id'];
    lastName = json['lastName'];
    middleName = json['middleName'];
    occupation = json['occupation'];
    userImage = json['userImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['age'] = age;
    data['firstName'] = firstName;
    data['id'] = id;
    data['lastName'] = lastName;
    data['middleName'] = middleName;
    data['occupation'] = occupation;
    data['userImage'] = userImage;
    return data;
  }
}
