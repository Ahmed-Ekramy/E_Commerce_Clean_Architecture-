import 'package:equatable/equatable.dart';

class SignUpEntity extends Equatable{
  UserEntity? user;
  String? token;

  SignUpEntity({this.user, this.token});

  SignUpEntity.fromJson(Map<String, dynamic> json) {

    user = json['user'] != null ? UserEntity.fromJson(json['user']) : null;
    token = json['token'];
  }

  @override
  // TODO: implement props
  List<Object?> get props => [user,token];
}

class UserEntity  extends Equatable{
  String? name;
  String? email;


  UserEntity({this.name, this.email,});

  UserEntity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name,email];

}
