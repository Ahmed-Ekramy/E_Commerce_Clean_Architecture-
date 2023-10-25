import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';

class BrandModel extends BrandEntity{
  Metadata? metadata;
  BrandModel({super.results, this.metadata, super.data});

  BrandModel.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? Metadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <BrandDataModel>[];
      json['data'].forEach((v) {
        data!.add(BrandDataModel.fromJson(v));
      });
    }
  }

}

class Metadata {
  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  Metadata({this.currentPage, this.numberOfPages, this.limit, this.nextPage});

  Metadata.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }

}

class BrandDataModel extends BrandDataEntity{

  String? createdAt;
  String? updatedAt;

  BrandDataModel(
      {super.sId,
        super.name,
        super.slug,
        super.image,
        this.createdAt,
        this.updatedAt});

  BrandDataModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}
