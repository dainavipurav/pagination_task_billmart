import 'package:pagination_task/models/user_model.dart';

class UserList {
  List<UserModel>? userModel;

  UserList({this.userModel});

  UserList.fromJson(Map<String, dynamic> json) {
    if (json['userModel'] != null) {
      userModel = <UserModel>[];
      json['userModel'].forEach((v) {
        userModel!.add(UserModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (userModel != null) {
      data['userModel'] = userModel!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
