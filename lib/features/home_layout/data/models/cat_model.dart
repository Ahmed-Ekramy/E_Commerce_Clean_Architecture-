import 'package:e_commerce3/features/home_layout/domain/entities/cat_entity.dart';

class CategoryModel extends CategoryEntity{
  CatMetadata? metadata;
  CategoryModel({super.results, this.metadata, super.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? CatMetadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <CatData>[];
      json['data'].forEach((v) {
        data!.add(CatData.fromJson(v));
      });
    }
  }
}

class CatMetadata {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  CatMetadata({this.currentPage, this.numberOfPages, this.limit});

  CatMetadata.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }


}

class CatData extends CatDataEntity{

  String? createdAt;
  String? updatedAt;

  CatData(
      {super.sId,
        super.name,
        super.slug,
        super.image,
        this.createdAt,
        this.updatedAt});

  CatData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

}
