import 'package:e_commerce3/features/home_layout/domain/entities/add_cart_entity.dart';

class AddCartModel extends AddCartEntity{
  String? status;
  AddCartModel({this.status, super.message, super.numOfCartItems, super.data});

  AddCartModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

}

class Data extends DataAddCart {
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

class Products extends ProductsAddCart {


  Products({super.count, super.sId, super.product, super.price});

  Products.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product = json['product'];
    price = json['price'];
  }

}
