import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable{
  num? results;

  List<CatDataEntity>? data;

  CategoryEntity({this.results, this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [data,results];
}

class CatDataEntity extends Equatable{
  String? sId;
  String? name;
  String? slug;
  String? image;

  CatDataEntity({
    this.sId,
    this.name,
    this.slug,
    this.image,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [sId,name,slug,image];
}
