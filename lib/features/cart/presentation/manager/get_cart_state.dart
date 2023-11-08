
import 'package:e_commerce3/features/cart/domain/entities/get_cart_entity.dart';

abstract class GetCartState {}
class GetCartInitial extends GetCartState {}
class GetCartLoading extends GetCartState {}
class GetCartSuccess extends GetCartState {
  GetCartEntity getCartEntity;

  GetCartSuccess(this.getCartEntity);
}
class GetCartFailure extends GetCartState {
  String message;
  GetCartFailure(this.message);
}
class DelLoading extends GetCartState {}
class DelSuccess extends GetCartState {
  GetCartEntity getCartEntity;

 DelSuccess(this.getCartEntity);
}
class DelFailure extends GetCartState {
  String message;
  DelFailure(this.message);
}
class UpDateLoading extends GetCartState {}
class UpDateSuccess extends GetCartState {
  GetCartEntity getCartEntity;

  UpDateSuccess(this.getCartEntity);
}
class UpDateFailure extends GetCartState {
  String message;
  UpDateFailure(this.message);
}
