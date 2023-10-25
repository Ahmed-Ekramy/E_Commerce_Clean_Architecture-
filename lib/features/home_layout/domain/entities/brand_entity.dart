import 'package:equatable/equatable.dart';

class BrandEntity  extends Equatable{
  int? results;
  List<BrandDataEntity>? data;

  BrandEntity({this.results, this.data});
  @override
  // TODO: implement props
  List<Object?> get props => [data,results];

}


class BrandDataEntity {
  String? sId;
  String? name;
  String? slug;
  String? image;


  BrandDataEntity(
      {this.sId,
        this.name,
        this.slug,
        this.image,});

  @override
  // TODO: implement props
  List<Object?> get props => [sId,name,slug,image];
}
