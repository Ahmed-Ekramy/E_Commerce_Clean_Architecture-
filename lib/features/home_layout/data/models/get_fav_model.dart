import 'package:e_commerce3/features/home_layout/domain/entities/get_fav_entity.dart';

class GetFavModel extends GetFavEntity{
  String? status;
  GetFavModel({this.status, super.count, super.data});

  GetFavModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    count = json['count'];
    if (json['data'] != null) {
      data = <DataFavModel>[];
      json['data'].forEach((v) {
        data!.add(new DataFavModel.fromJson(v));
      });
    }
  }

}

class DataFavModel extends DataGetFav{
  String? createdAt;
  String? updatedAt;
  int? iV;


  DataFavModel(
      {super.sold,
        super.images,
        super.subcategory,
        super.ratingsQuantity,
        super.sId,
        super.title,
        super.slug,
        super.description,
        super.quantity,
        super.price,
        super.imageCover,
        super.category,
        super.brand,
        super.ratingsAverage,
        this.createdAt,
        this.updatedAt,
        this.iV,
        super.id,
        super.priceAfterDiscount});

  DataFavModel.fromJson(Map<String, dynamic> json) {
    sold = json['sold'];
    images = json['images'].cast<String>();
    if (json['subcategory'] != null) {
      subcategory = <SubcategoryFavModel>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(new SubcategoryFavModel.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    sId = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    brand = json['brand'] != null ? new Category.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    id = json['id'];
    priceAfterDiscount = json['priceAfterDiscount'];
  }


}

class SubcategoryFavModel extends SubcategoryGetFav{


  SubcategoryFavModel({super.sId, super.name, super.slug, super.category});

  SubcategoryFavModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }


}

class Category extends CategoryGetFav {

  Category({super.sId, super.name, super.slug, super.image});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

}
