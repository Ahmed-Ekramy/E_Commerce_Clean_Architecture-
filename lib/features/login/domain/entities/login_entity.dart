import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable{
  UserLoginEntity? user;
  String? token;

  LoginEntity({ this.user, this.token});

  @override
  // TODO: implement props
  List<Object?> get props => [user,token];

}

class UserLoginEntity  extends Equatable{
  String? name;
  String? email;

  UserLoginEntity({this.name, this.email,});

  @override
  // TODO: implement props
  List<Object?> get props => [name,email];

}
