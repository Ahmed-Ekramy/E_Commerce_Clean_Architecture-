import 'package:equatable/equatable.dart';

class AddFavEntity extends Equatable{
  String? message;
  List<String>? data;

  AddFavEntity({ this.message, this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [message,data];

}
