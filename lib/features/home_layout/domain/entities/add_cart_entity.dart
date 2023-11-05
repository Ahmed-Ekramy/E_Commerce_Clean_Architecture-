import 'package:equatable/equatable.dart';

class AddCartEntity extends Equatable{
  String? message;
  int? numOfCartItems;
  DataAddCart? data;

  AddCartEntity({ this.message, this.numOfCartItems, this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [message,numOfCartItems,data];

}

class DataAddCart extends Equatable{
  String? sId;
  String? cartOwner;
  List<ProductsAddCart>? products;
  int? iV;
  int? totalCartPrice;

  DataAddCart(
      {this.sId,
        this.cartOwner,
        this.products,
        this.iV,
        this.totalCartPrice});

  @override
  // TODO: implement props
  List<Object?> get props => [sId,cartOwner,products,iV,totalCartPrice];

}

class ProductsAddCart extends Equatable{
  int? count;
  String? sId;
  String? product;
  int? price;

  ProductsAddCart({this.count, this.sId, this.product, this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [count,sId,product,price];

}
