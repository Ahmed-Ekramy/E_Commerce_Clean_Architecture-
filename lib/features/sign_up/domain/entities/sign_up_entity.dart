import 'package:equatable/equatable.dart';

class SignUpEntity extends Equatable{
  UserEntity? user;
  String? token;

  SignUpEntity({this.user, this.token});
  @override
  // TODO: implement props
  List<Object?> get props => [user,token];
}

class UserEntity  extends Equatable{
  String? name;
  String? email;


  UserEntity({this.name, this.email,});

  @override
  // TODO: implement props
  List<Object?> get props => [name,email];

}
