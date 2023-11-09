import 'package:e_commerce3/features/home_layout/domain/entities/add_fav.dart';

class AddFavModel extends AddFavEntity {
  String? status;
  AddFavModel({this.status, super.message, super.data});
  AddFavModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'].cast<String>();
  }

}
