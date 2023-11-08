import 'package:dartz/dartz.dart';
import 'package:e_commerce3/features/cart/data/models/get_cart_model.dart';

import '../../../../core/utils/failures.dart';
abstract class GetCartDto{
  Future<Either<Failures,GetCartModel>>getCart();
  Future<Either<Failures,GetCartModel>>deleteItem(String id);
  Future<Either<Failures,GetCartModel>>upDate(String id,int count);

}