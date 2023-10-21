import 'package:e_commerce3/features/sign_up/domain/entities/sign_up_entity.dart';

class SignUpModel extends SignUpEntity {
  String? message;

  SignUpModel({this.message, super.user, super.token});

  SignUpModel.fromJson(Map<String, dynamic> json)
      : this(message: json['message'], token: json['token']);
}

class User extends UserEntity {
  String? role;

  User({super.name, super.email, this.role});

  User.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          email: json['email'],
          role: json['role'],
        );
}
