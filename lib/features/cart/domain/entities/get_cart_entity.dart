import 'package:equatable/equatable.dart';

class GetCartEntity extends Equatable {
  int? numOfCartItems;
  DataGetCart? data;

  GetCartEntity({this.numOfCartItems, this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [numOfCartItems,data];
}

class DataGetCart extends Equatable {
  String? sId;
  String? cartOwner;
  List<ProductsGetCart>? products;
  int? iV;
  int? totalCartPrice;

  DataGetCart(
      {this.sId, this.cartOwner, this.products, this.iV, this.totalCartPrice});

  @override
  // TODO: implement props
  List<Object?> get props => [sId, cartOwner, products, iV, totalCartPrice];
}

class ProductsGetCart extends Equatable {
  int? count;
  String? sId;
  ProductGetCart? product;
  int? price;

  ProductsGetCart({this.count, this.sId, this.product, this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [count, sId, product, price];
}

class ProductGetCart extends Equatable {
  List<SubcategoryGetCart>? subcategory;
  String? sId;
  String? title;
  int? quantity;
  String? imageCover;
  CategoryGetCart? category;
  CategoryGetCart? brand;
  double? ratingsAverage;
  String? id;

  ProductGetCart(
      {this.subcategory,
      this.sId,
      this.title,
      this.quantity,
      this.imageCover,
      this.category,
      this.brand,
      this.ratingsAverage,
      this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [
        subcategory,
        sId,
        title,
        quantity,
        imageCover,
        category,
        brand,
        ratingsAverage,
        id
      ];
}

class SubcategoryGetCart extends Equatable {
  String? sId;
  String? name;
  String? slug;
  String? category;

  SubcategoryGetCart({this.sId, this.name, this.slug, this.category});

  @override
  // TODO: implement props
  List<Object?> get props => [sId, name, slug, category];
}

class CategoryGetCart extends Equatable {
  String? sId;
  String? name;
  String? slug;
  String? image;

  CategoryGetCart({this.sId, this.name, this.slug, this.image});

  @override
  // TODO: implement props
  List<Object?> get props => [sId, name, slug, image];
}
