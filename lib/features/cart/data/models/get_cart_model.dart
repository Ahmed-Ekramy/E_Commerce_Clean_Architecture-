import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';

class GetCartModel extends GetCartEntity {
  String? status;


  GetCartModel({this.status, super.numOfCartItems, super.data});

  GetCartModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

}

class Data extends DataGetCart{

  String? createdAt;
  String? updatedAt;


  Data(
      {super.sId,
        super.cartOwner,
        super.products,
        this.createdAt,
        this.updatedAt,
        super.iV,
        super.totalCartPrice});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }

}

class Products extends ProductsGetCart{

  Products({super.count, super.sId, super.product, super.price});

  Products.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;
    price = json['price'];
  }

}

class Product extends ProductGetCart{

  Product(
      {super.subcategory,
        super.sId,
        super.title,
        super.quantity,
        super.imageCover,
        super.category,
        super.brand,
        super.ratingsAverage,
        super.id});

  Product.fromJson(Map<String, dynamic> json) {
    if (json['subcategory'] != null) {
      subcategory = <Subcategory>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(Subcategory.fromJson(v));
      });
    }
    sId = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? Category.fromJson(json['category'])
        : null;
    brand = json['brand'] != null ? Category.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }

}

class Subcategory extends SubcategoryGetCart{


  Subcategory({super.sId, super.name, super.slug, super.category});

  Subcategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }

}

class Category extends CategoryGetCart{

  Category({super.sId, super.name, super.slug, super.image});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

}
