class GetFavEntity {
  num? count;
  List<DataGetFav>? data;

  GetFavEntity({ this.count, this.data});
}

class DataGetFav {
  num? sold;
  List<String>? images;
  List<SubcategoryGetFav>? subcategory;
  num? ratingsQuantity;
  String? sId;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  String? imageCover;
  CategoryGetFav? category;
  CategoryGetFav? brand;
  num? ratingsAverage;
  String? id;
  num? priceAfterDiscount;

  DataGetFav(
      {this.sold,
        this.images,
        this.subcategory,
        this.ratingsQuantity,
        this.sId,
        this.title,
        this.slug,
        this.description,
        this.quantity,
        this.price,
        this.imageCover,
        this.category,
        this.brand,
        this.ratingsAverage,
        this.id,
        this.priceAfterDiscount});

}

class SubcategoryGetFav {
  String? sId;
  String? name;
  String? slug;
  String? category;

  SubcategoryGetFav({this.sId, this.name, this.slug, this.category});

}

class CategoryGetFav {
  String? sId;
  String? name;
  String? slug;
  String? image;

  CategoryGetFav({this.sId, this.name, this.slug, this.image});

}
