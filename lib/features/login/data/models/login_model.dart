import '../../domain/entities/login_entity.dart';

class LoginModel extends LoginEntity{
  String? message;
  LoginModel({this.message, super.user, super.token});

  LoginModel.fromJson(Map<String, dynamic> json) :this(
      message : json['message'],
      user : json['user'] != null ? User.fromJson(json['user']) : null,
      token : json['token']
  );

}

class User extends UserLoginEntity {

  String? role;

  User({super.name, super.email, this.role});

  User.fromJson(Map<String, dynamic> json) :this(
      name: json['name'],
      email: json['email'],
      role: json['role']

  );
}

